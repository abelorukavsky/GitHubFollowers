//
//  GHFUserInfoHeaderVC.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 08.01.2022.
//

import UIKit

class GHFUserInfoHeaderVC: UIViewController {
    
    let avatarImageView = GHFAvatarImageView(frame: .zero)
    let userNameLabel = GHFTitleLabel(textAlignment: .left, fontSize: 34)
    let nameLabel = GHFSecondaryTitleLabel(fontSize: 18)
    let locationImageView = UIImageView()
    let locationLabel = GHFSecondaryTitleLabel(fontSize: 18)
    let bioLabel = GHFBodyLabel(textAlignment: .left)
    
    var user: User!
    
    init(user: User) {
        super.init(nibName: nil, bundle: nil)
        self.user = user
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubview()
        layoutUI()
    }
    
    func addSubview() {
        view.addSubview(avatarImageView)
        view.addSubview(userNameLabel)
        view.addSubview(nameLabel)
        view.addSubview(locationImageView)
        view.addSubview(locationLabel)
        view.addSubview(bioLabel)
    }
    
    func layoutUI() {
        let padding: CGFloat = 20
        let textImagePadding: CGFloat = 12
    }
    

}
