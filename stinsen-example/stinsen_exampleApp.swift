//
//  stinsen_exampleApp.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 27/04/2023.
//

import SwiftUI
import Stinsen

@main
struct stinsen_exampleApp: App {
    var body: some Scene {
        WindowGroup {
//            if #available(iOS 16, *) {
//                NavigationStack {
//                    MainCoordinator()
//                        .view()
//                }
//            } else {
                NavigationView {
                    MainCoordinator()
                        .view()
                }
//            }
            
        }
    }
}
