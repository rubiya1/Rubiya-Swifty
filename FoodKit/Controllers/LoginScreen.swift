//
//  ContentView.swift
//  FoodKit
//
//  Created by Rubiya.Faniband on 04/07/20.
//  Copyright © 2020 Rubiya.Faniband. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   @State private var email = ""
    @State private var password = ""

    fileprivate func signinButton() -> some View {
        return Button(action: signIn) {
            Text("Login")
                .foregroundColor(Color.white)
        }
        .frame(height: 56)
        .padding([.leading, .trailing], 150)
        .background(Color.yellow)
        .cornerRadius(5.0)
        .padding(.top, 30)
    }
    
    fileprivate func signUpButton() -> some View {
        return Button(action: signUp) {
            Text("Sign up an account")
                .foregroundColor(Color(red: 82.0/255, green: 188.0/255, blue: 192.0/255))
        }
        .padding(.bottom, 60)
    }
    
    var body: some View {
        VStack {
            Text("Log in").font(.largeTitle).fontWeight(.bold) .padding(.top, 60)
            TextField("Email", text: $email)
                .padding(.horizontal, 30).padding(.top, 40)
            Divider()
                .padding(.horizontal, 30)
            SecureField("Password", text: $password)
                .padding(.horizontal, 30).padding(.top, 20)
            Divider()
                .padding(.horizontal, 30)
            Text("forgot Password?").font(.system(size: 13))
                    .frame(width: 350, alignment: .trailing)
                .padding(.top, 20)
                .foregroundColor(Color(red: 82.0/255, green: 188.0/255, blue: 192.0/255))

            signinButton()
            Spacer()
            signUpButton()
            
        }
    
    }
    func signIn() {

    }
    
    func signUp() {
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static func customBackgroud() -> Color {
        return Color(red: 255.0/255, green: 204.0/255, blue: 42.0/255)
    }
    //
    
}
