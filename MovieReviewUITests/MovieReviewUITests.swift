//
//  MovieReviewUITests.swift
//  MovieReviewUITests
//
//  Created by Eunyeong Kim on 2021/08/23.
//

import XCTest

class MovieReviewUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        // 하나의 테스트 항목이 실패하면 테스트 종료
        continueAfterFailure = false

        app = XCUIApplication()
        app.launch()
    }

    override func tearDown() {
        super.tearDown()

        app = nil
    }

    func test_navigationBar의_title이_영화평점으로_설정되어있다() {
        let existNavigationBar = app.navigationBars["영화 평점"].exists
        XCTAssertTrue(existNavigationBar)
    }

    func test_searchBar가_존재한다() {
        let existSearchBar = app.navigationBars["영화 평점"]
            .searchFields["Search"]
            .exists

        XCTAssertTrue(existSearchBar)
    }

    func test_searchBar에_cancel버튼이_존재한다() {
        let navigationBar = app.navigationBars["영화 평점"]
        navigationBar
            .searchFields["Search"]
            .tap()

        let existSearchBarCancelButton = navigationBar
            .buttons["Cancel"]
            .exists

        XCTAssertTrue(existSearchBarCancelButton)
    }

    enum CellData: String {
        case existsMovie = "애니메이션의 모든 것"
        case notExistsMovie = "007"
    }

    // BDD
    func test_영화가_즐겨찾기_되어있으면 () {
        let existsCell = app.collectionViews
            .cells
            .containing(.staticText, identifier: CellData.existsMovie.rawValue)
            .element
            .exists

        XCTAssertTrue(existsCell, "Title이 표시된 Cell이 존재한다")
    }

    func test_영화가_즐겨찾기_되어있지_않으면 () {
        let existsCell = app.collectionViews
            .cells
            .containing(.staticText, identifier: CellData.notExistsMovie.rawValue)
            .element
            .exists

        XCTAssertFalse(existsCell, "Title이 표시된 Cell이 존재하지 않는다")
    }
}
