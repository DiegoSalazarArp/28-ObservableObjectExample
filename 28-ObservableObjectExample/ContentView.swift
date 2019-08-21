//
//  ContentView.swift
//  28-ObservableObjectExample
//
//  Created by Diego Salazar Arp on 15-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject  var userSettings: UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
                .font(.largeTitle)
                .cornerRadius(15)
            
            Button("Increment Score"){
                self.userSettings.score += 1
            }.cornerRadius(15)
            
            FancyScoreView()
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
