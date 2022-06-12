//
//  Senator.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import Foundation

struct Senator:Codable, Identifiable {
     
    let caucus: String?
    let congress_numbers: [Int]?
    let current: Bool?
    let description: String?
    let district: String?
    let enddate: String?
    let extra: Extra?
    let leadership_title: String?
    let party: String?
    let person: Person?
    let phone: String?
    let role_type: String?
    let role_type_label: String?
    let senator_class: String?
    let senator_class_label: String?
    let senator_rank: String?
    let senator_rank_label: String?
    let startdate: String?
    let state: String?
    let title: String?
    let title_long: String?
    let website: String?
    
    let id:UUID
    
    init(caucus:String? = nil,
         congress_numbers: [Int]? = [Int](),
         current: Bool? = nil,
         description: String? = nil,
         district: String? = nil,
         enddate: String? = nil,
         extra: Extra? = nil,
         leadership_title: String? = nil,
         party: String? = nil,
         person: Person? = nil,
         phone: String? = nil,
         role_type: String? = nil,
         role_type_label: String? = nil,
         senator_class: String? = nil,
         senator_class_label: String? = nil,
         senator_rank: String? = nil,
         senator_rank_label: String? = nil,
         startdate:String? = nil,
         state: String? = nil,
         title: String? = nil,
         title_long: String? = nil,
         website: String? = nil,
         id: UUID = UUID()
    ) {
        self.caucus = caucus
        self.congress_numbers = congress_numbers
        self.current = current
        self.description = description
        self.district = district
        self.enddate = enddate
        self.extra = extra
        self.leadership_title = leadership_title
        self.party = party
        self.person = person
        self.phone = phone
        self.role_type = role_type
        self.role_type_label = role_type_label
        self.senator_rank = senator_rank
        self.senator_rank_label = senator_rank_label
        self.senator_class = senator_class
        self.senator_class_label = senator_class_label
        self.startdate = startdate
        self.state = state
        self.title = title
        self.title_long = title_long
        self.website = website
        self.id = id
    }
    
    var caucusString: String {
        return caucus ?? ""
    }
    
    var congressNumbersString: String {
        var numbersString = ""
        congress_numbers?.forEach({ number in
            numbersString.append("\(number) ")
        })
        
        return numbersString
    }
    
    var currentBoolString: String {
        guard let safeCurrent = current else {
            return "false"
        }
        
        if safeCurrent == true {
            return "true"
        } else {
            return "false"
        }
    }
    
    var descriptionString: String {
        return description ?? ""
    }
    
    var districtString: String {
        return district ?? ""
    }
    
    var enddateString: String {
        return enddate ?? ""
    }
    
    var leadershipTitleString: String {
        return leadership_title ?? ""
    }
    
    var partyShortString: String {
        let first = String(partyString.prefix(1))
        
        guard first.isEmpty == false else {
            return ""
        }
        
        return first.uppercased()
    }
    
    var partyString: String {
        return party ?? ""
    }
    
    var phoneString: String {
        return phone ?? ""
    }
    
    func phoneURL() throws -> URL  {
        guard let urlString = phone else {
            throw SenetorError.noUrlString
        }
        
        guard let url = URL(string: urlString) else {
            throw SenetorError.cantFormURL
        }
        
        return url
    }
    
    func webURL() throws -> URL  {
        guard let urlString = website else {
            throw SenetorError.noUrlString
        }
        
        guard let url = URL(string: urlString) else {
            throw SenetorError.cantFormURL
        }
        
        return url
    }
    
    var roleTypeString: String {
        return role_type ?? ""
    }
    
    var roleTypeLabelString: String {
        return role_type_label ?? ""
    }
    
    var senatorRankString: String {
        return senator_rank ?? ""
    }
    
    var senatorRankLabelString: String {
        return senator_rank_label ?? ""
    }
    
    var senatorClassString: String {
        return senator_class ?? ""
    }
    
    var senatorClassLabelString: String {
        return senator_class_label ?? ""
    }
    
    var startDateString: String {
        return startdate ?? ""
    }
    
    var stateString: String {
        return state ?? ""
    }
    
    var titleString: String {
        return title ?? ""
    }
    
    var titleLongString: String {
        return title_long ?? ""
    }
    
    var websiteString: String {
        return website ?? ""
    }
    
    // Person Strings
    var nameString: String {
        guard let safePerson = person else {
            return ""
        }
        let first = safePerson.firstnameString
        let nick = safePerson.nicknameString
        let middle = safePerson.middlenameString
        let last = safePerson.lastnameString
        
        var displayName = ""
        if first.isEmpty == false {
            displayName = first
        }
        if nick.isEmpty == false {
            displayName.append(" \"\(nick)\"")
        }
        if middle.isEmpty == false {
            displayName.append(" \(middle)")
        }
        if last.isEmpty == false {
            displayName.append(" \(last)")
        }
        
        return displayName
    }
    
    var cspanidString: String {
        guard let safePerson = person else {
            return ""
        }
        
        return String(safePerson.cspanidInt)
    }

    var bioguideidString: String {
        guard let safePerson = person else {
            return ""
        }
        
        return safePerson.bioguideidString
    }

    
    var birthdayString: String {
        guard let safePerson = person else {
            return ""
        }
        
        return safePerson.birthdayString
    }

    
    var twitteridString: String {
        guard let safePerson = person else {
            return ""
        }
        
        return safePerson.twitteridString
    }
    
    var youtubeidString: String {
        guard let safePerson = person else {
            return ""
        }
        
        return safePerson.youtubeidString
    }

    
    //Extra Strings
    var addressString: String {
        guard let safeExtra = extra else {
            return ""
        }
        
        return safeExtra.addressString
    }
    
    var contactFormString: String {
        guard let safeExtra = extra else {
            return ""
        }
        
        return safeExtra.contactFormString
    }
    
    var faxString: String {
        guard let safeExtra = extra else {
            return ""
        }
        
        return safeExtra.faxString
    }
    
    var officeString: String {
        guard let safeExtra = extra else {
            return ""
        }
        
        return safeExtra.officeString
    }
}
