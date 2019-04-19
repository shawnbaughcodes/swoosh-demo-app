//
//  LeagueViewController.swift
//  swoosh-demo-app
//
//  Created by Shawn Baugh on 4/19/19.
//  Copyright © 2019 Shawn Baugh. All rights reserved.
//

import UIKit

class LeagueViewController: UIViewController {
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillViewControllerSegue", sender: self)
    }

    @IBOutlet weak var nextButton: BorderButton!
    
    
    @IBAction func onMensButtonPressed(_ sender: Any) {
        self.selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensbuttonPressed(_ sender: Any) {
        self.selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedButtonPressed(_ sender: Any) {
        self.selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType;
        nextButton.isEnabled = true;
    }
    
    
    
    // MARK: - Navigation
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let skillViewController = segue.destination as? SkillViewController {
            skillViewController.player = player;
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
