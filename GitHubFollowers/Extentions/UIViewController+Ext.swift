//
//  UIViewController+Ext.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 19.12.2021.
//

import UIKit

extension UIViewController {
    
    func presentGHFAlertOnMainThread(title: String, message: String, buttonTitle: String) {
        DispatchQueue.main.async {
            let alertVC = GHFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle = .overFullScreen
            alertVC.modalTransitionStyle = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
