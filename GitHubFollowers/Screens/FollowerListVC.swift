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
        
        NetworkManager.shared.getFollowers(for: userName, page: 1) { followers, errorMessage in
            guard let followers = followers else {
                self.presentGitHubFollowersAlertOnMainThread(title: "bad stuff happened", message: errorMessage!.rawValue, buttonTitle: "ok")
                return
            }
            
            print("Followers.count = \(followers.count)")
            dump(followers)

        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

}
