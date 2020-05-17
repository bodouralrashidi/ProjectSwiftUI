//
//  ContentView.swift
//  ProjectSwiftUI
//
//  Created by Bodour Alrashidi on 5/15/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Athkarpage().tabItem {Image(systemName:"heart")}
            
            Activitypage().tabItem {Image(systemName:"paintbrush")}
            
            Homepage().tabItem {Image(systemName: "house")}
            
            Chatpage().tabItem {Image(systemName: "captions.bubble")}
            
            Gamepage().tabItem {Image(systemName:"gamecontroller")}
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
