//
//  MockMovieListViewController.swift
//  MovieReviewTests
//
//  Created by Eunyeong Kim on 2021/08/23.
//

import Foundation
@testable import MovieReview

final class MockMovieListViewController: MovieListProtocol {
    var isCalledSetupNavigationBar = false
    var isCalledSetupSearchBar = false
    var isCalledSetupViews = false
    var isCalledUpdateSearchTableView = false
    var isCalledPushToMovieViewController = false
    var isCalledUpdateCollectionView = false

    func setupNavigationBar() {
        isCalledSetupNavigationBar = true
    }

    func setupSearchBar() {
        isCalledSetupSearchBar = true
    }

    func setupViews() {
        isCalledSetupViews = true
    }

    func updateSearchTableView(isHidden: Bool) {
        isCalledUpdateSearchTableView = true
    }

    func pushToMovieViewController(with movie: Movie) {
        isCalledPushToMovieViewController = true
    }

    func updateCollectionView() {
        isCalledUpdateCollectionView = true
    }
}
