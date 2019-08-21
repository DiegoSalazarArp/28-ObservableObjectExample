//
//  FancyScoreView.swift
//  28-ObservableObjectExample
//
//  Created by Diego Salazar Arp on 15-08-19.
//  Copyright © 2019 Diego Salazar Arp. All rights reserved.
//

import SwiftUI

struct FancyScoreView: View {
    
    @EnvironmentObject var userSettings : UserSettings
    
    var body: some View {
        VStack {
            Text("\(self.userSettings.score)")
            Button("Increase Score"){
                self.userSettings.score += 1
                }.padding()
            .background(Color.green)
        }        .padding()
        .background(Color.orange)
        .cornerRadius(15)
            .foregroundColor(Color.white)
    }
}

#if DEBUG
struct FancyScoreView_Previews: PreviewProvider {
    static var previews: some View {
        FancyScoreView()
    }
}
#endif
