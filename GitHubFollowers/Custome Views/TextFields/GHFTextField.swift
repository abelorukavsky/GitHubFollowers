//
//  GitHubFollowersTextField.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 17.12.2021.
//

import UIKit

/// Textfield in SearchVC to enter a username
class GHFTextField: UITextField {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        
        backgroundColor = .tertiarySystemBackground
        keyboardType = .webSearch
        autocorrectionType = .no
        clearButtonMode = .always
        returnKeyType = .go
        autocapitalizationType = .none
        placeholder = "Enter a username"
    }
}
