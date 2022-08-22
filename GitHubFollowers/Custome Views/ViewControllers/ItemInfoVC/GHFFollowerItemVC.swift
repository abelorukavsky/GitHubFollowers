//
//  GHFFollowerItemVC.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 10.01.2022.
//

import Foundation

protocol GHFFollowerItemVCDelegate: AnyObject {
    func didTapGetFollowers(for user: User)
}

class GHFFollowerItemVC: GHFItemInfoVC {
    
    weak var delegate: GHFFollowerItemVCDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    private func configureItems() {
        itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
        itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
        actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
    }
    
    override func actionButtonTapped() {
        delegate.didTapGetFollowers(for: user)
    }
    
}
