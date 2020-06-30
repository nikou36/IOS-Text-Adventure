//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    var storyArray:[Int:Story]
    init(){
        self.storyArray = [Int:Story]()
        let story1 = Story(id:1,description: "You Wake up as the sun is setting. Confused and dazed you take a step forward and stop. A jolt of pain shoots through your body. You look down and see a bullet wound on your shoulder. You don't know how it got there but you can sense who ever gave you it may still be out there. As a soldier you know that you must make a cruicial decision. Night will fall soon.", choice1: Choice(descrip:"Walk through the forest at night",destination:1), choice2: Choice(descrip:"Find a location to make camp",destination:2),bg:"sunrise.jpg")
        let story2 = Story(id:2,description: "The pain is searing but you are tough enough to travel a good distance. To your excitement; In the distance you see the lights of a town. Your happiness is cut short by some one approaching you from behind, 'Go to sleep', said the mysterious shadow. A gunshot wakes up the forest. You have died ", choice1: Choice(descrip: "End",destination: 0), choice2: Choice(descrip: "End",destination: 0),bg:"gameOver")
        let story3 = Story(id:3,description: "You set up a fire and settle down for the night. You hardly sleep though as you can hear footsteps around your camp. They do not seem close but they are begining to unnerve you.", choice1: Choice(descrip: "Investigate the noise",destination: 1), choice2: Choice(descrip: "Stay at camp but make it obvious you are aware of them",destination: 3),bg:"bondfire")
        let story4 = Story(id:3,description: "The morning rays gently wake you up. You feel much more energized but still in considerable pain. You decide to head out of the forest. To the north there is a village that you can get first aid from but intel suggests that they may be under enemy occupation. To the South is your base of operations but you are not sure if they survived yestersay's battle. ", choice1: Choice(descrip: "Head North to the village",destination: 4), choice2: Choice(descrip: "Head South to the Base",destination: 5),bg:"nextDay")
        let story5 = Story(id:3,description: "You reach the bustling village and your fears are confirmed. The enemy is there and they have troops patroling the whole city", choice1: Choice(descrip: "Wait until nightfall to find a doctor",destination: 0), choice2: Choice(descrip: "Look for a disguise",destination: 0),bg:"village")
        let story6 = Story(id:3,description: "Your suspicions were correct. The base was bombed to high hell. No one can be found and no supplies could be scavenged. Just when you were about to loose all hope you hear voices in the distance. You see three figures approaching in the distance. You cannot tell if they are enemies or allies", choice1: Choice(descrip: "Approach them",destination: 0), choice2: Choice(descrip: "Turn back and head to the village",destination: 0),bg:"base")
        self.storyArray[0] = story1
        self.storyArray[1] = story2
        self.storyArray[2] = story3
        self.storyArray[3] = story4
        self.storyArray[4] = story5
        self.storyArray[5] = story6
        
    }
    
    func get(index:Int) -> Story{
        return self.storyArray[index]!
    }
}
