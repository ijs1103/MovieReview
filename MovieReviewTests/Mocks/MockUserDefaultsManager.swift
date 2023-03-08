//
//  MockUserDefaultsManager.swift
//  MovieReviewTests
//
//  Created by Eunyeong Kim on 2021/08/23.
//

import Foundation
@testable import MovieReview

final class MockUserDefaultsManager: UserDefaultsManagerProtocol {
    var isCalledGetMovies = false
    var isCalledAddMovie = false
    var isCalledRemoveMovie = false

    func getMovies() -> [Movie] {
        isCalledGetMovies = true
        return []
    }

    func addMovie(_ newValue: Movie) {
        isCalledAddMovie = true
    }

    func removeMovie(_ value: Movie) {
        isCalledRemoveMovie = true
    }
}
