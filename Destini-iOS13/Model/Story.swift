//
//  Sotry.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation
struct Story{
    var id:Int
    var description:String
    var choice1: Choice
    var choice2: Choice
    var bg:String

    init(id:Int,description:String,choice1:Choice,choice2:Choice,bg:String){
        self.id = id
        self.description = description
        self.choice1 = choice1
        self.choice2 = choice2
        self.bg = bg
    }
}

