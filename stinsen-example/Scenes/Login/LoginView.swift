//
//  LoginView.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        
        Button {
            DispatchQueue.main.async {
                AuthenticationService.shared.status = .authenticated
            }
        } label: {
            Text("Login")
        }

    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
