//
//  MovieSearchResponseModel.swift
//  MovieReview
//
//  Created by Eunyeong Kim on 2021/08/23.
//

import Foundation

struct MovieSearchResponseModel: Decodable {
    var items: [Movie] = []
}
