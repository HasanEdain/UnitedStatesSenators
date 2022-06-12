//
//  Extra.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import Foundation

struct Extra: Codable, Identifiable {
    let address: String?
    let contact_form: String?
    let fax: String?
    let office: String?
    
    let id: UUID

    init(address: String? = nil,
         contact_form: String? = nil,
         fax: String? = nil,
         office: String? = nil,
         id: UUID = UUID()
    ) {

        self.address = address
        self.contact_form = contact_form
        self.fax = fax
        self.office = office
        self.id = id
    }
    
    var addressString: String {
        return address ?? ""
    }
    
    var contactFormString: String {
        return contact_form ?? ""
    }
    
    var faxString: String {
        return fax ?? ""
    }
    
    var officeString: String {
        return office ?? ""
    }
}
