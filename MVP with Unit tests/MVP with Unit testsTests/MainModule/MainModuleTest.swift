//
//  MainModuleTest.swift
//  MVP with Unit testsTests
//
//  Created by Meraki on 07.07.2021.
//

import XCTest
@testable import MVP_with_Unit_tests

class MockView: MainViewProtocol {
    var titleLabel: String?
    func setGreeting(greeting: String) {
        self.titleLabel = greeting
    }
}

class MainModuleTest: XCTestCase {

    var view: MockView!
    var person: Person!
    var presenter: MainPresenter!
    
    override func setUpWithError() throws {
        view = MockView()
        person = Person(firstName: "Baz", lastName: "Bar")
        presenter = MainPresenter(view: view, person: person)
    }

    override func tearDownWithError() throws {
        view = nil
        person = nil
        presenter = nil
    }
    
    func testModuleIsNotNil() {
        XCTAssertNotNil(view)
        XCTAssertNotNil(person)
        XCTAssertNotNil(presenter)
    }
    
    func testView() {
        presenter.showGreeting()
        let name = "Baz Bar"
        XCTAssertEqual(view.titleLabel, name)
    }
    
    func testPersonModule() {
        let firstName = "Baz"
        let lastName = "Bar"
        XCTAssertEqual(person.firstName, firstName)
        XCTAssertEqual(person.lastName, lastName)
        
    }

   

   
}
