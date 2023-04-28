//
//  ContentView.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 27/04/2023.
//

import SwiftUI
import Stinsen

struct ContentView: View {
    
    @EnvironmentObject var router: MainCoordinator.Router
    
    var body: some View {
        VStack {
            Button {
//                router.route(to: \.pushToRed)
            } label: {
                Text("To red")
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
