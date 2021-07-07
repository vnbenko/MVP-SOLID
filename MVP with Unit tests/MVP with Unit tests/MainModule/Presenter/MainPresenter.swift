//
//  MainPresenter.swift
//  MVP with Unit tests
//
//  Created by Meraki on 07.07.2021.
//

import Foundation

protocol MainViewProtocol: AnyObject {
    // AnyObject - weak reference
    func setGreeting(greeting: String)
}

protocol MainViewPresenterProtocol: AnyObject {
    //presenter maintain View and Model
    init(view: MainViewProtocol, person: Person)
    func showGreeting()
}

class MainPresenter: MainViewPresenterProtocol {
    let view: MainViewProtocol
    let person: Person
    
    required init(view: MainViewProtocol, person: Person) {
        self.view = view
        self.person = person
    }
    
    func showGreeting() {
        let greeting = self.person.firstName + " " + self.person.lastName
        self.view.setGreeting(greeting: greeting)
        
    }
    
    
}
