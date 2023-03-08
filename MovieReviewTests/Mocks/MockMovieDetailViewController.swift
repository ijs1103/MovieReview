//
//  MockMovieDetailViewController.swift
//  MovieReviewTests
//
//  Created by Eunyeong Kim on 2021/08/23.
//

import Foundation
@testable import MovieReview

final class MockMovieDetailViewController: MovieDetailProtocol {
    var isCalledSetViews = false
    var isCalledSetRightBarButton = false

    var settedIsLiked = false

    func setViews(with movie: Movie) {
        isCalledSetViews = true
    }

    func setRightBarButton(with isLiked: Bool) {
        settedIsLiked = isLiked

        isCalledSetRightBarButton = true
    }
}
