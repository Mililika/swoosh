//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Mykhailo Kazymyr  on 11.10.22.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!

    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    

    @IBAction func nextButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func mensButtonPressed(_ sender: UIButton) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func womensButtonPressed(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func coedButtonPressed(_ sender: UIButton) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
     }

}
