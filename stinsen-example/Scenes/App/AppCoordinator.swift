//
//  AppCoordinator.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import Foundation
import SwiftUI
import Stinsen

final class AppCoordinator: TabCoordinatable {
    
    var child = TabChild(
        startingItems: [
            \AppCoordinator.home,
             \AppCoordinator.profile,
        ]
    )
    
    @Route(tabItem: makeHomeTabIcon) var home = makeHome
    @Route(tabItem: makeProfileTab) var profile = makeProfile
    
}

extension AppCoordinator {
    
    @ViewBuilder func makeHomeTabIcon(isActive: Bool) -> some View {
        Image(systemName: "house")
        Text("Home")
    }
    
    func makeHome() -> HomeCoordinator {
        return HomeCoordinator()
    }
    
    @ViewBuilder func makeProfileTab(isActive: Bool) -> some View {
        Image(systemName: "person.crop.circle")
        Text("Profile")
    }
    
    func makeProfile() -> ProfileCoordinator {
        return ProfileCoordinator()
    }
    
}
