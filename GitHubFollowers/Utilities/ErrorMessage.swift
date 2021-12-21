//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Anton Belorukavsky on 21.12.2021.
//

import Foundation

enum GitHubFollowersError: String, Error {
    case invalidUserName = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete request. Please check your internet coinnection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data recieved from server was invalid. Please try again."
}
