//
//  ContentView.swift
//  CarGuysMeetings
//
//  Created by Kacper Biaduń on 06/03/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var username: String = ""
    @State private var password: String = ""
        
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    Form{
                        Text("Login")
                        TextField(text: $username, prompt: Text("Required")){
                            Text("Username")
                        }.disableAutocorrection(true)
                        Text("Password")
                        SecureField(text: $password, prompt: Text("Required")){
                            Text("Password")
                        }.disableAutocorrection(true)
                    }
                }
                
                NavigationLink(destination: MainView()) {
                    Text("Log In")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
