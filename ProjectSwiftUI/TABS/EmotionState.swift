//
//  EmotionState.swift
//  ProjectSwiftUI
//
//  Created by Bodour Alrashidi on 5/18/20.
//  Copyright © 2020 Bodour Alrashidi. All rights reserved.
//
import SwiftUI

class Env : ObservableObject{
    @Published var variable : emotions = .happy
    
}

struct EmotionState_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
