//
//  Officials.swift
//  UnitedStatesSenators
//
//  Created by Hasan Edain on 6/12/22.
//

import Foundation

class Officials: ObservableObject {
    @Published var senators: Senators = Senators(objects: [Senator]())
}
