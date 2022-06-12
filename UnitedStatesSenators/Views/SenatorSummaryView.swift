//
//  SenatorView.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import SwiftUI

struct SenatorSummaryView: View {
    var senator: Senator
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("\(senator.nameString)")
                    .font(.headline)
                    .fontWeight(.heavy)
                PartyView(partyString: senator.partyShortString)
                Text(", \(senator.stateString)")
                    .font(.footnote)
                    .fontWeight(.bold)
            }
            
            Text("\(senator.descriptionString)")
        }
    }
}

struct SenatorView_Previews: PreviewProvider {
    @State static var senatorTwo = Senator(
        description: "The Second Senator from Idaho: George Spud", party: "democrat", state: "Idaho")

    static var previews: some View {
        SenatorSummaryView(senator: senatorTwo)
    }
}
