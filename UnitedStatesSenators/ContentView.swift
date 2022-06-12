//
//  ContentView.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var officials: Officials = Officials()
    
    var body: some View {
        VStack {
            if officials.senators.objects.count == 0 {
                Text("Number Of Senators: \(officials.senators.objects.count)")
                Button("Fetch Senators") {
                    Task {
                        officials.senators = await SenatorFetcher.fetchSenatorsWithContinuation()
                    }
                }
            } else {
                SenatorListView(senators: officials.senators)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
