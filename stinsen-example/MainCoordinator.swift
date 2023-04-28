//
//  MainCoordinator.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 27/04/2023.
//

import Foundation
import Stinsen
import SwiftUI

final class MainCoordinator: NavigationCoordinatable {
    
    var stack: Stinsen.NavigationStack<MainCoordinator>
    
    @Root var unauthenticated = makeUnauthenticated
    @Root var authenticated = makeAuthenticated
    
    init() {
        switch AuthenticationService.shared.status {
        case .authenticated:
            stack = NavigationStack(initial: \MainCoordinator.authenticated)
        case .unauthenticated:
            stack = NavigationStack(initial: \MainCoordinator.unauthenticated)
        }
    }
    
    @ViewBuilder func sharedView(_ view: AnyView) -> some View {
        view
            .onReceive(AuthenticationService.shared.$status, perform: { status in
                switch status {
                case .unauthenticated:
                    self.root(\.unauthenticated)
                case .authenticated:
                    self.root(\.authenticated)
                }
            })
            
    }
    
    func customize(_ view: AnyView) -> some View {
        sharedView(view)
    }

}

extension MainCoordinator {
    
    func makeUnauthenticated() -> NavigationViewCoordinator<LoginCoordinator> {
        return NavigationViewCoordinator(LoginCoordinator())
    }
    
    func makeAuthenticated() -> AppCoordinator {
        return AppCoordinator()
    }
    
}
