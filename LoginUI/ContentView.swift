//
//  ContentView.swift
//  LoginUI
//
//  Created by Abhishek Thakur on 30/03/20.
//  Copyright © 2020 Abhishek Thakur. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var phoneNo: String = ""
    @State private var password: String = ""
    
    var body: some View {
        ZStack {
            Color.init("BackgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack(spacing:5) {
                Text("Account")
                    .fontWeight(.bold)
                    .font(.title)
                ZStack{
                    Image("admin")
                        .resizable()
                        .frame(width:100,height: 100)
                        .cornerRadius(35)
                        .overlay(RoundedRectangle(cornerRadius: 35)
                            .stroke(Color.black, lineWidth: 4))
                    Image(systemName: "arrow.uturn.left.circle")
                        .resizable()
                        .frame(width:30,height: 30)
                        .background(Color.yellow)
                        .clipShape(Circle())
                        .offset(x:40,y:40)
                }
                .padding(.top,25)
                Spacer()
                VStack(alignment: .leading){
                    Text("Full name")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    HStack{
                        TextField("",text: $name)
                        Image("tick")
                            .resizable()
                            .frame(width:30,height: 30)
                    }
                    
                    Divider().foregroundColor(Color.white)
                    
                }
                VStack(alignment: .leading){
                    Text("Email")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    HStack{
                        TextField("",text: $email)
                        Image("tick")
                            .resizable()
                            .frame(width:30,height: 30)
                    }
                    Divider().foregroundColor(Color.white)
                }
                VStack(alignment: .leading){
                    Text("What's your phone number?")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    HStack{
                        TextField("",text: $phoneNo)
                    }
                    Divider().foregroundColor(Color.white)
                }
                VStack(alignment: .leading){
                    Text("Password")
                        .font(.subheadline)
                        .foregroundColor(Color.gray)
                    
                    HStack{
                        
                        SecureField("",text: $password)
                        Text("Medium")
                            .foregroundColor(Color.yellow)
                    }
                    Divider().foregroundColor(Color.white)
                }
                Spacer()
                Button(action: { print("Next tapped!") }) {
                    Text("Next") .fontWeight(.semibold) .font(.headline) .frame(minWidth: 0, maxWidth: .infinity) .padding() .foregroundColor(.black) .background(Color.yellow) .cornerRadius(15)
                        .padding(EdgeInsets(top: 0, leading: 30, bottom: 0, trailing: 30))
                }
            }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))// VStack
            
        } // ZStack
    } // body View
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
