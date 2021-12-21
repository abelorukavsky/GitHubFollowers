//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 21.12.2021.
//

import Foundation

struct Follower: Codable {
    var login: String
    var avatarUrl: String // мы можем использовать здесь camelCase вместо snake_case
}
