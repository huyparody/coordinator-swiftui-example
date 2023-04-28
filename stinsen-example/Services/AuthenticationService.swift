//
//  AuthenticationService.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import Foundation

class AuthenticationService: ObservableObject {
    enum Status: Equatable {
        case authenticated
        case unauthenticated
    }
    
    static var shared: AuthenticationService = AuthenticationService()
    
    @Published var status: Status {
        didSet {
            switch status {
            case .unauthenticated:
                UserDefaults.standard.removeObject(forKey: "isLoggedIn")
            case .authenticated:
                UserDefaults.standard.set(true, forKey: "isLoggedIn")
            }
        }
    }
    
    init() {
        let isLoggedIn = UserDefaults.standard.bool(forKey: "isLoggedIn")
        self.status = isLoggedIn ? Status.authenticated : Status.unauthenticated
    }
}
