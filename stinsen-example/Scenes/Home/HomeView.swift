//
//  HomeView.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var router: HomeCoordinator.Router
    
    var body: some View {
        VStack {
            Text("Home")
            
            Button {
                router.route(to: \.pushToRed)
            } label: {
                Text("To red")
            }

        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
