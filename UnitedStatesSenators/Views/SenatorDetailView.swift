//
//  SenatorDetailView.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import SwiftUI

struct SenatorDetailView: View {
    var senator: Senator
    
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("\(senator.nameString)").font(.title3)
                HStack {
                    Text("[")
                    PartyView(partyString: senator.partyShortString)
                    Text(" - \(senator.stateString)]")
                    Text("\(senator.descriptionString)")
                }
//                HStack {
//                    Text("Caucus:").fontWeight(.bold)
//                    Text(" \(senator.caucusString)")
//                }
                HStack {
                    Text("\(senator.roleTypeLabelString)")
                    Text("\(senator.senatorClassLabelString)")
                    Text("\(senator.senatorRankLabelString)")
                }
                HStack {
                    Text("Congress Numbers:").fontWeight(.bold)
                    Text(" \(senator.congressNumbersString)")
                }
                HStack {
                    Text("Current: ").fontWeight(.bold)
                    Text("\(senator.currentBoolString)")
                }
                
                HStack {
                    Text("Start Date:").fontWeight(.bold)
                    Text(" \(senator.startDateString)")
                }
                HStack {
                    Text("End Date  :").fontWeight(.bold)
                    Text(" \(senator.enddateString)")
                }
                VStack(alignment: .leading) {
                    Text("Leadership Title:").fontWeight(.bold)
                    Text("\(senator.leadershipTitleString)")
                }
            }
        
            VStack(alignment: .leading) {
                Text("Address:").fontWeight(.bold)
                Text("\(senator.addressString)")
            }
            
            VStack(alignment: .leading) {
                Text("bio: \(senator.bioguideidString)")
                Text("cspan: \(senator.cspanidString)")
                Text("twitter: \(senator.twitteridString)")
                Text("youtube: \(senator.youtubeidString)")
                Button(senator.phoneString) {
                    do {
                        let url = try senator.phoneURL()
                        UIApplication.shared.open(url)
                    } catch {
                        return
                    }
                }
                Button(senator.websiteString) {
                    do {
                        let url = try senator.webURL()
                        UIApplication.shared.open(url)
                    } catch {
                        return
                    }
                }
                Text("Fax:").fontWeight(.bold)
                Text("\(senator.faxString)")
            }
        }
    }
}

struct SenatorDetailView_Previews: PreviewProvider {
    static var extra: Extra = Extra(
        address: "1234 second dr, Cicinati, Oh 123456",
        contact_form: "Mail",
        fax: "123-456-7890",
        office: "4321 7th ave")
    
    static var person: Person = Person(
        bioguideid: "bioguideid",
        birthday: "03/04/1985",
        cspanid: 1234567,
        firstname: "First",
        gender: "F",
        lastname: "Last",
        link: "https://www.foo.gov",
        middlename: "Middle",
        name: "First Middle Last",
        namemode: "namemode",
        osid: "osid",
        pvsid: "pvsid",
        sortname: "sortname",
        twitterid: "twitterid",
        youtubeid: "youtubeid")
    @State static var senatorTwo = Senator(
        caucus: "Democrats",
        congress_numbers: [121,122,123],
        current: true,
        description: "Senior Senator from ID",
        enddate: "12/12/2024",
        extra: extra,
        leadership_title: "whip",
        party: "democrat",
        person: person,
        phone: "206-555-1212",
        role_type: "Sen.",
        role_type_label: "Senator",
        senator_class: "Jun",
        senator_class_label: "Junior",
        senator_rank: "Sen",
        senator_rank_label: "Senior",
        startdate: "01/01/2010",
        state: "Idaho",
        title: "Sr.",
        title_long: "Senior",
        website: "https://www.google.com")
    
    static var previews: some View {
        SenatorDetailView(senator: senatorTwo)
    }
}
