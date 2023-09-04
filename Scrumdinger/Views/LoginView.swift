//
//  LoginView.swift
//  Scrumdinger
//
//  Created by Atikur Rahman on 9/4/23.
//

import SwiftUI

struct LoginViewForm: View {
    @Binding var name: String
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("Email", text: $email)
            TextField("Name", text: $password)
        }
    }
}

struct LoginView: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        VStack {
            LoginViewForm(name: $name, email: $email, password: $password)
            Button("Submit") {
                print("Submitted values: name: \(name), email: \(email), password: \(password)")
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
