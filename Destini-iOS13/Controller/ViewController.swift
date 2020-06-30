//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    var curr = 0
    var storyManager = StoryBrain()
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        var story = self.storyManager.get(index: curr)
        self.storyLabel.text = story.description
        self.background.image = UIImage(named: story.bg)
        self.choice1Button.setTitle(story.choice1.descrip, for: .normal)
        self.choice2Button.setTitle(story.choice2.descrip, for: .normal)
    }
    
    @IBAction func choiceButtonTouched(_ sender: UIButton) {
        var story = self.storyManager.get(index: curr)
        if(sender == choice1Button){
            self.curr = story.choice1.destination
        }else{
            self.curr = story.choice2.destination
        }
        updateUI()
    }
    
    

}

