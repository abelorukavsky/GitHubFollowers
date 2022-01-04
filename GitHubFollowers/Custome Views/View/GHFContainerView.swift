//
//  GitHubFollowersContainerView.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 20.12.2021.
//

import UIKit

/// View для custom Alert, в котором находятся GHFTitleLabel и GHFBodyLabel
class GHFContainerView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }

}
