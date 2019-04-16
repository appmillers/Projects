//
//  Blockchain.swift
//  Blockchain
//
//  Created by Edy on 3/7/19.
//  Copyright © 2019 App Millers. All rights reserved.
//

import UIKit

class Blockchain {
    //logic for the Blockchain here
    
    var chain = [Block]()
    
    func createInitialBlock(data:String) {
        let genesisBlock = Block()
        genesisBlock.hash = genesisBlock.generateHash()
        genesisBlock.data = data
        genesisBlock.previousHash = "0000"
        genesisBlock.index = 0
        chain.append(genesisBlock)
    }
    
    func createBlock(data:String) {
        let newBlock = Block()
        newBlock.hash = newBlock.generateHash()
        newBlock.data = data
        newBlock.previousHash = chain[chain.count-1].hash
        newBlock.index = chain.count
        chain.append(newBlock)
    }
    
    
}
