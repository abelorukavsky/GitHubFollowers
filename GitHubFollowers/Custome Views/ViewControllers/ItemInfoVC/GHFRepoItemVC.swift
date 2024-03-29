//
//  GHFRepoItemVC.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 10.01.2022.
//

import UIKit

protocol GHFRepoItemVCDelegate: AnyObject {
    func didTapGitHubProfile(for user: User)
}

class GHFRepoItemVC: GHFItemInfoVC {
    
    weak var delegate: GHFRepoItemVCDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGitHubProfile(for: user)
    }
    
}
