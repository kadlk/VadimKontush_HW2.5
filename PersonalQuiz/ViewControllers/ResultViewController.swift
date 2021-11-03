//
//  ResultViewController.swift
//  PersonalQuiz
//
//  Created by Vadim Kontush on 01/11/2021.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var animalLabelOutlet: UILabel!
    @IBOutlet var descriptionLabelOutlet: UILabel!
    @IBOutlet var navigationInfoOutlet: UINavigationItem!
    
    var answers = [Answer?]()
    // After homework was sent i change String to AnimalType
    var animalsTypeCount: [AnimalType: Int] = [AnimalType.cat: 0, AnimalType.dog: 0, AnimalType.rabbit: 0, AnimalType.turtle: 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationInfoOutlet.hidesBackButton = true
        
        for answer in answers{
            if answer?.type == AnimalType.dog{
                animalsTypeCount[AnimalType.dog, default: 0] += 1
            }
            if answer?.type == AnimalType.cat{
                animalsTypeCount[AnimalType.cat, default: 0] += 1
            }
            if answer?.type == AnimalType.rabbit{
                animalsTypeCount[AnimalType.rabbit, default: 0] += 1
            }
            if answer?.type == AnimalType.turtle{
                animalsTypeCount[AnimalType.turtle, default: 0] += 1
            }
        }
        
        let greatestKey = (animalsTypeCount.max{a, b in a.value < b.value})?.key
        
        if greatestKey == AnimalType.dog{
            animalLabelOutlet.text = "Вы - \(AnimalType.dog.rawValue)" 
            descriptionLabelOutlet.text = AnimalType.dog.definition
        }
        else if greatestKey == AnimalType.cat{
            animalLabelOutlet.text = "Вы - \(AnimalType.cat.rawValue)"
            descriptionLabelOutlet.text = AnimalType.cat.definition
        }
        else if greatestKey == AnimalType.rabbit{
            animalLabelOutlet.text = "Вы - \(AnimalType.rabbit.rawValue)"
            descriptionLabelOutlet.text = AnimalType.rabbit.definition
        }
        else if greatestKey == AnimalType.turtle{
            animalLabelOutlet.text = "Вы - \(AnimalType.turtle.rawValue)"
            descriptionLabelOutlet.text = AnimalType.turtle.definition
        }
        }
    }






    




