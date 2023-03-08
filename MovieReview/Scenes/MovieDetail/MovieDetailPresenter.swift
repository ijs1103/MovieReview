//
//  MovieDetailPresenter.swift
//  MovieReview
//
//  Created by Eunyeong Kim on 2021/08/23.
//

import Foundation

protocol MovieDetailProtocol: AnyObject {
    func setViews(with movie: Movie)
    func setRightBarButton(with isLiked: Bool)
}

final class MovieDetailPresenter {
    private weak var viewController: MovieDetailProtocol?

    private let userDefaultsManager: UserDefaultsManagerProtocol

    private var movie: Movie

    init(
        viewController: MovieDetailProtocol,
        movie: Movie,
        userDefaultsManager: UserDefaultsManagerProtocol = UserDefaultsManager()
    ) {
        self.viewController = viewController
        self.movie = movie
        self.userDefaultsManager = userDefaultsManager
    }

    func viewDidLoad() {
        viewController?.setViews(with: movie)
        viewController?.setRightBarButton(with: movie.isLiked)
    }

    func didTapRightBarButtonItem() {
        movie.isLiked.toggle()

        if movie.isLiked {
            userDefaultsManager.addMovie(movie)
        } else {
            userDefaultsManager.removeMovie(movie)
        }

        viewController?.setRightBarButton(with: movie.isLiked)
    }
}
