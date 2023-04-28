//
//  HomeCoordinator.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import Foundation
import SwiftUI
import Stinsen

final class HomeCoordinator: NavigationCoordinatable {
    
    let stack = NavigationStack(initial: \HomeCoordinator.start)
    
    @Root var start = makeStart
    @Route(.push) var pushToRed = makeRed
    
}
extension HomeCoordinator {
    @ViewBuilder func makeStart() -> some View {
        HomeView()
    }
    
    @ViewBuilder func makeRed() -> some View {
        RedView()
    }
}
