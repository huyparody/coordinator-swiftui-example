//
//  ProfileCoordinator.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import Foundation
import SwiftUI
import Stinsen

final class ProfileCoordinator: NavigationCoordinatable {
    
    let stack = NavigationStack(initial: \ProfileCoordinator.start)
    
    @Root var start = makeStart
    
}
extension ProfileCoordinator {
    @ViewBuilder func makeStart() -> some View {
        ProfileView()
    }
}
