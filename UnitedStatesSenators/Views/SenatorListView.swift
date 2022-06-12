//
//  SenatorListView.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import SwiftUI

struct SenatorListView: View {
    var senators: Senators
    
    var body: some View {
        NavigationView {
            List(senators.objects, id:\.id) {senator in
                
                NavigationLink(destination: SenatorDetailView(senator: senator)) {
                    SenatorSummaryView(senator: senator)
                }
            }.navigationTitle("Senators")
        }
    }
}

struct SenatorListView_Previews: PreviewProvider {
    static var senatorOne = Senator(description: "The First Senator from Idaho: Elmer Spud")
    static var senatorTwo = Senator(description: "The Second Senator from Idaho: George Spud")
    static var senatorThree = Senator(description: "The Third Senator from Idaho: Susan Spud")
    static var senatorFour = Senator(description: "The Fourth Senator from Idaho: Emily Spud")
    static var senatorFive = Senator(description: "The Fifth Senator from Idaho: Dweezel Spud")
    static var senatorSix = Senator(description: "The Sixth Senator from Idaho: Goober Spud")
    
    @State static var senators = Senators(objects: [senatorOne, senatorTwo, senatorThree, senatorFour, senatorFive, senatorSix])
    
    static var previews: some View {
        SenatorListView(senators: senators)
    }
}
