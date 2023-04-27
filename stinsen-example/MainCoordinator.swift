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
    
    let stack = NavigationStack.init(initial: \MainCoordinator.start)
    
    @Root var start = makeStart
    @Route(.push) var pushToRed = makeRed
    
    @ViewBuilder func makeStart() -> some View {
        ContentView()
    }
    
    @ViewBuilder func makeRed() -> some View {
        RedView()
    }
    
//    func makeRed() -> NavigationViewCoordinator<RedCoordinator> {
//        return NavigationViewCoordinator(RedCoordinator())
//    }

}

final class RedCoordinator: NavigationCoordinatable {
    
    let stack = NavigationStack.init(initial: \RedCoordinator.start)
    
    @Root var start = makeStart
    
    @ViewBuilder func makeStart() -> some View {
        RedView()
    }
    
}
