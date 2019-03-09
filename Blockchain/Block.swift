//
//  Block.swift
//  Blockchain
//
//  Created by Edy on 3/7/19.
//  Copyright © 2019 App Millers. All rights reserved.
//

import UIKit

class Block {
    
    var hash: String!
    var data: String!
    var previousHash: String!
    var index: Int!
    // logic for Block here
    
    func generateHash() -> String {
        return NSUUID().uuidString.replacingOccurrences(of: "-", with: "")
    }
}
