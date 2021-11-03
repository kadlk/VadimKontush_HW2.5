//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Nikita Zharinov on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var animalLabelOutlet: UILabel!
    @IBOutlet var descriptionLabelOutlet: UILabel!
    @IBOutlet var navigationInfoOutlet: UINavigationItem!
    
    var answers = [Answer?]()
    var animalsTypeCount: [String: Int] = ["catCount": 0, "dogCount": 0, "rabbitCount": 0, "turtleCount": 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationInfoOutlet.hidesBackButton = true
        
        for answer in answers{
            if answer?.type == AnimalType.dog{
                animalsTypeCount["dogCount", default: 0] += 1
            }
            if answer?.type == AnimalType.cat{
                animalsTypeCount["catCount", default: 0] += 1
            }
            if answer?.type == AnimalType.rabbit{
                animalsTypeCount["rabbitCount", default: 0] += 1
            }
            if answer?.type == AnimalType.turtle{
                animalsTypeCount["turtleCount", default: 0] += 1
            }
        }
        
        let greatestKey = (animalsTypeCount.max{a, b in a.value < b.value})?.key
        
        if greatestKey == "dogCount"{
            animalLabelOutlet.text = "Вы - \(AnimalType.dog.rawValue)" 
            descriptionLabelOutlet.text = AnimalType.dog.definition
        }
        else if greatestKey == "catCount"{
            animalLabelOutlet.text = "Вы - \(AnimalType.cat.rawValue)"
            descriptionLabelOutlet.text = AnimalType.cat.definition
        }
        else if greatestKey == "rabbitCount"{
            animalLabelOutlet.text = "Вы - \(AnimalType.rabbit.rawValue)"
            descriptionLabelOutlet.text = AnimalType.rabbit.definition
        }
        else if greatestKey == "turtleCount"{
            animalLabelOutlet.text = "Вы - \(AnimalType.turtle.rawValue)"
            descriptionLabelOutlet.text = AnimalType.turtle.definition
        }
        }
    }






    




