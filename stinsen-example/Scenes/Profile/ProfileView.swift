//
//  ProfileView.swift
//  stinsen-example
//
//  Created by Huy Trinh Duc on 28/04/2023.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack {
            Text("Profile")
            
            Button {
                AuthenticationService.shared.status = .unauthenticated
            } label: {
                Text("Logout")
            }
        }

    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
