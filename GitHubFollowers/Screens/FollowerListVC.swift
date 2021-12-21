//
//  FollowerListVC.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 18.12.2021.
//

import UIKit

class FollowerListVC: UIViewController {
    
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: userName, page: 1) { result in
            
            switch result {
            case .success(let followers):
                dump(followers)
                
            case .failure(let error):
                self.presentGitHubFollowersAlertOnMainThread(title: "bad stuff happened", message: error.rawValue, buttonTitle: "ok")
            }
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
