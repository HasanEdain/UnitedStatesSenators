//
//  PartyView.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import SwiftUI

struct PartyView: View {
    var partyString: String
    
    var body: some View {
        Text(partyString)
            .foregroundColor(partyColor)
            .fontWeight(.black)
            .font(.title2)
    }
    
    var partyColor: Color {
        if partyString.first == "R" {
            return Color.red
        } else if partyString.first == "D" {
            return Color.blue
        } else if partyString.first == "I" {
            return Color.purple
        } else {
            return Color.black
        }
    }
}

struct PartyView_Previews: PreviewProvider {
    @State static var partyOneString: String = "R"
    @State static var partyTwoString: String = "D"
    @State static var partyThreeString: String = "I"
    @State static var partyFourString: String = "a"
    
    static var previews: some View {
        VStack {
            PartyView(partyString: partyOneString)
            PartyView(partyString: partyTwoString)
            PartyView(partyString: partyThreeString)
            PartyView(partyString: partyFourString)
        }

    }
}
