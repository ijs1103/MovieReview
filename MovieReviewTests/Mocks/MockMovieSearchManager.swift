//
//  MockMovieSearchManager.swift
//  MovieReviewTests
//
//  Created by Eunyeong Kim on 2021/08/23.
//

import Foundation
@testable import MovieReview

final class MockMovieSearchManager: MovieSearchManagerProtocol {
    var isCalledRequest = false

    var needToSuccessRequest = false

    func request(
        from keyword: String,
        completionHandler: @escaping ([Movie]) -> Void
    ) {
        isCalledRequest = true

        if needToSuccessRequest {
            completionHandler([])
        }
    }
}
