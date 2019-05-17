//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Soft Dev Student on 5/2/19.
//

import Foundation
import UIKit


    class AthleteFormViewController: UIViewController {
        
        @IBOutlet weak var nameTextField: UITextField!
        var athlete: Athlete?
        @IBOutlet weak var ageTextField: UITextField!
        @IBOutlet weak var leagueTextField: UITextField!
        @IBOutlet weak var teamTextField: UITextField!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            updateView()
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            
        }
        
        @IBAction func saveButtonPressed(_ sender: Any) {
            guard let name = nameTextField.text,
                let ageText = ageTextField.text,
                let age = Int(ageText),
                let league = leagueTextField.text,
                let team = teamTextField.text else { return }
            
            athlete = Athlete(name: name, age: age, league: league, team: team)
            performSegue(withIdentifier: "AthleteList", sender: self)
        }
        
        func updateView() {
            if let athlete = athlete {
                nameTextField.text = athlete.name
                ageTextField.text = "\(athlete.age)"
                leagueTextField.text = athlete.league
                teamTextField.text = athlete.team
            }
        }
        
}

