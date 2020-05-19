//
//  SignInView.swift
//  ProjectSwiftUI
//
//  Created by Rawan Alhammadi on 5/18/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct SignInView: View {
    @State var user: String = ""
    @State var password: String = ""
       @State var signUpVC = false
    var body: some View {
         ZStack
                  {
                    Rectangle()
                        .opacity(0).background(Image("signInBG").resizable().scaledToFill())
                    
                    
                    
                      VStack(spacing: 10){
                        
                        HStack( spacing: 10){
                            Text("Sign in").font(.system(size: 50,weight: .bold
                                ))
                                .foregroundColor(.white)
                                
                                .shadow(radius: 98)
//                            Text("صديقي")
//                                .bold()
//                                .font(.system(size: 50))
//                                .shadow(radius: 98)
                            
                        }
                        
                        TextField("Enter Your Username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                             
                     .padding()
                            .textFieldStyle(RoundedBorderTextFieldStyle() )
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color("yello"))
                          
                      TextField("Enter Your Password", text: $password)
                        .keyboardType(.numberPad)
                        
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding().multilineTextAlignment(.center)
                          
                          
                          
                          Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                         
                            Text("دخول")
                                .accentColor(.white)
                                .font(.system(size: 30 ,weight: .bold
                                    ))
                                .frame(width:300, height: 60)
                                .background(Color("button blue"))
                            .clipShape(Capsule())
                            
                          }.padding()
                        Text("Don’t have an accound?").foregroundColor(Color("black"))
                        Text("Sign up").foregroundColor(Color("blue")).onTapGesture {
                            self.signUpVC.toggle()
                        }
                        .sheet(isPresented: $signUpVC){SignUpView()}
                        
                      } .padding()
              }.edgesIgnoringSafeArea(.all)
    }
}

struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
