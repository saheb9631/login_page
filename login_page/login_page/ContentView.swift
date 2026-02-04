//
//  ContentView.swift
//  login_page
//
//  Created by Eazydiner on 04/02/26.
//

import SwiftUI

struct ContentView: View {
    @State var text = ""
    @State var pass = ""
    var body: some View {
        VStack {
            Image("img1").resizable().scaledToFit()
            
            Text("Login").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).bold()
            Text("Why work hard if you can work smart").font(.subheadline)
            
            TextField("Enter Username", text: $text)
                .padding()
                .overlay{
                    RoundedRectangle(cornerRadius: 8).stroke(.black)
                        
                    
                }
            SecureField("Password", text: $pass)
                .padding()
                .overlay{
                    RoundedRectangle(cornerRadius: 8).stroke(.black)
                }
            
            Button{
                print("Login")
            }label: {
                Text("Login")
                
                
                    .font(.title2)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, minHeight: 50)
                            .background(Color.blue)
                            .cornerRadius(12)
            }
            Button{
                print("forget")
            }label: {
                Text("Forget Password")
            }
            Spacer()
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        
        
    }
}

#Preview {
    ContentView()
}
