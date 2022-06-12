//
//  Person.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import Foundation
import SwiftUI

struct Person: Codable, Identifiable {
    let bioguideid: String?
    let birthday: String?
    let cspanid: Int?
    let firstname: String?
    let gender: String?
    let gender_label: String?
    let lastname: String?
    let link: String?
    let middlename: String?
    let name: String?
    let namemode: String?
    let nickname: String?
    let osid: String?
    let pvsid: String?
    let sortname: String?
    let twitterid: String?
    let youtubid: String?

    let id: UUID

    init(bioguideid: String? = nil,
         birthday: String? = nil,
         cspanid: Int? = nil,
         firstname: String? = nil,
         gender: String? = nil,
         gender_label: String? = nil,
         lastname: String? = nil,
         link: String? = nil,
         middlename: String? = nil,
         name: String? = nil,
         namemode: String? = nil,
         nickname: String? = nil,
         osid: String? = nil,
         pvsid: String? = nil,
         sortname: String? = nil,
         twitterid: String? = nil,
         youtubeid: String? = nil,
         id: UUID = UUID()
    ) {
        self.bioguideid = bioguideid
        self.birthday = birthday
        self.cspanid = cspanid
        self.firstname = firstname
        self.gender = gender
        self.gender_label = gender_label
        self.lastname = lastname
        self.link = link
        self.middlename = middlename
        self.name = name
        self.namemode = namemode
        self.nickname = nickname
        self.osid = osid
        self.pvsid = pvsid
        self.sortname = sortname
        self.twitterid = twitterid
        self.youtubid = youtubeid
        self.id = id
    }
    
    var bioguideidString:String {
        return bioguideid ?? ""
    }
    
    var birthdayString: String {
        return birthday ?? ""
    }
    
    var cspanidInt: Int {
        return cspanid ?? 0
    }
    
    var firstnameString: String {
        return firstname ?? ""
    }
    
    var genderString:String {
        return gender ?? ""
    }
    
    var genderlabelString: String {
        return gender_label ?? ""
    }
    
    var lastnameString: String {
        return lastname ?? ""
    }
    
    var linkString: String {
        return link ?? ""
    }
    
    var middlenameString: String {
        return middlename ?? ""
    }
    
    var nameString: String {
        return name ?? ""
    }
    
    var namemodeString: String {
        return namemode ?? ""
    }
    
    var nicknameString: String {
        return nickname ?? ""
    }
    
    var osidString: String {
        return osid ?? ""
    }
    
    var pvsidString: String {
        return pvsid ?? ""
    }
    
    var sortnameString: String {
        return sortname ?? ""
    }
    
    var twitteridString: String {
        return twitterid ?? ""
    }
    
    var youtubeidString: String {
        return youtubid ?? ""
    }
}
