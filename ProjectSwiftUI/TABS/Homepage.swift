//
//  Homepage.swift
//  ProjectSwiftUI
//
//  Created by Bodour Alrashidi on 5/15/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct Homepage: View {
@EnvironmentObject var env : Env

    var body: some View {
        ZStack{
            VStack{
                HStack{
                    Text("Today")
                    
                }
                    HStack{
                                Text("Today")
                               }
                
                
                
            ScrollView(.horizontal){
            
                HStack(alignment: .center)
                {
                   
            Image(emotions.happy.rawValue).resizable()
            Image(emotions.excited.rawValue).resizable()
            Image(emotions.normal.rawValue).resizable()
            Image(emotions.upset.rawValue).resizable()
            Image(emotions.sad.rawValue).resizable()
                }.frame(width: 300, height:80) .offset(x : 20)
                
            //UIScreen.main.bounds.width
            }.padding()
        }
        } }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}

struct buttonlayout : ViewModifier {
    func body(content: Content) -> some View {
        content
        
    }
}
