//
//  Constants.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 08.01.2022.
//

import Foundation
import UIKit

enum SFSymbols {
    static let location = "mappin.and.ellipse"
    static let repos = "folder"
    static let gists = "text.alignleft"
    static let followers = "heart"
    static let following = "person.2"
}

enum Images {
    static let emptyStateLogo = UIImage(named: "empty-state-logo")
    static let placeHolderImage = UIImage(named: "avatar-placeholder")
    static let ghLogo = UIImage(named: "gh-logo")
}

enum ScreenSize {
    static let width = UIScreen.main.bounds.size.width
    static let height = UIScreen.main.bounds.size.height
    static let maxLenght = max(ScreenSize.width, ScreenSize.height)
    static let minLenght = min(ScreenSize.width, ScreenSize.height)
}

enum DeviceTypes {
    static let idiom = UIDevice.current.userInterfaceIdiom
    
    // Only logical (UIKit) screen sizes in dots (not pixels) by width x lenght
    static let isiPhoneSe1 = idiom == .phone && ScreenSize.maxLenght == 568.0
    static let isiPhone7 = idiom == .phone && ScreenSize.maxLenght == 667.0
    static let isiPhone7Plus = idiom == .phone && ScreenSize.maxLenght == 847.0
    static let isiPhone8 = isiPhone7
    static let isiPhone8Plus = idiom == .phone && ScreenSize.maxLenght == 736.0
    static let isiPhoneX = idiom == .phone && ScreenSize.maxLenght == 812.0
    static let isiPhoneXs = isiPhoneX
    static let isiPhoneXsMax = idiom == .phone && ScreenSize.maxLenght == 896.0
    static let isiPhoneXr = isiPhoneXsMax
    static let isiPhone11 = isiPhoneXsMax
    static let isiPhone11Pro = isiPhoneX
    static let isiPhone11ProMax = isiPhoneXsMax
    static let isiPhoneSe2 = isiPhone7
    static let isiPhone12 = idiom == .phone && ScreenSize.maxLenght == 844.0
    static let isiPhone12Pro = isiPhone12
    static let isiPhone12ProMax = idiom == .phone && ScreenSize.maxLenght == 926.0
    static let isiPhone12mini = isiPhoneX
    static let isiPhone13 = isiPhone12
    static let isiPhone13Pro = isiPhone12
    static let isiPhone13ProMax = isiPhone12ProMax
    static let isiPhone13mini = isiPhoneX
    
    
}
