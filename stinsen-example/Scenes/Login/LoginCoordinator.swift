//
//  LoginCoordinator.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import Foundation
import SwiftUI
import Stinsen

final class LoginCoordinator: NavigationCoordinatable {
    let stack = NavigationStack(initial: \LoginCoordinator.start)
    
    @Root var start = makeStart

}
extension LoginCoordinator {
    
    @ViewBuilder func makeStart() -> some View {
        LoginView()
    }
    
}
