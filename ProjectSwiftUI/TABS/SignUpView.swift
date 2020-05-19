//
//  SignUpView.swift
//  ProjectSwiftUI
//
//  Created by Rawan Alhammadi on 5/18/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct SignUpView: View {
    @State var user: String = ""
      @State var password: String = ""
    @State var  yourhobby: String = ""
    var body: some View {
        ZStack{
            // the back ground
            Rectangle().opacity(0.0)
                .background(Image("background*")  .resizable()
            .scaledToFill())
         
            
               //the element of the view
            VStack(alignment: .center )
                {
                
           // i couldn't know how to use the custom font
                                   
                                        Text("Sign Up")
                                            .font(.custom("Cairo-ExtraLight.ttf", size: 40))
                    .padding(50)
                                              // i couldn't know how to use the custom font
                                            .foregroundColor(Color("black light"))
                                            
                                            .shadow(radius: 98)
                                        
                                    
                    Text("Pic your user name").font(.title)
                                    TextField("Enter Your Username", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                                         
                                
                                        .textFieldStyle(RoundedBorderTextFieldStyle() )
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color("yello"))
                                     
                    Text("choose a password").font(.title)
                                  TextField("Enter Your Password", text: $password)
                                    .keyboardType(.numberPad)
                                    
                                    .textFieldStyle(RoundedBorderTextFieldStyle())
                                    .multilineTextAlignment(.center)
                                      
                                      
                    Text("Choose your hobby").font(.title)
                                                         ScrollView(.horizontal, showsIndicators: true){
                                                                            HStack{
                                                                                ForEach (0..<hobbies.count, id: \.self){
                                                                                    i in
                                                                                   
                                                                                    Image("\(hobbies[i])")
                                                                        .resizable()
                                                                                    .onTapGesture {
                                                                                            self.yourhobby =  hobbies[i]

                                                                                                                        }

                                                                                    }.frame( width:60,height: 80)
                                                                            }
                                                                        }
                                      
                                      Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                     
                                        Text("سجل")
                                            .accentColor(.white)
                                            .font(.system(size: 30 ,weight: .bold
                                                ))
                                            .frame(width:300, height: 60)
                                            .background(Color("button blue"))
                                        .clipShape(Capsule())
                                        
                                      }.padding()
                   
            }.scaledToFit()// end VStack
        }// end zStack
        .edgesIgnoringSafeArea(.all)
    }
}





struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
