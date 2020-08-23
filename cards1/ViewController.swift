//
//  ViewController.swift
//  cards1
//
//  Created by James Charrel on 8/23/20.
//  Copyright © 2020 James Charrel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var nomDuSet = [String]()
    var set = [[String: Any]]()
    var chosenSet = ""
    var chosenWords: Dictionary<String, String> = [:]
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        
       
        
        nomDuSet.append("set 1")
        nomDuSet.append("set 2")
        nomDuSet.append("set 3")
        
        
        
        var set = [["bonjour": "Guten Tag", "bonne nuit": "Guten Nacht"], ["Salut": "hallo", "fussball": "foot"], ["PSG": "Bayern", "Paris" : "Berlin"]]
        
        // Do any additional setup after loading the view.
    }

  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = nomDuSet[indexPath.row]
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  nomDuSet.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var chosenSet = nomDuSet[indexPath.row]
        var chosenWords = set[indexPath.row]
        performSegue(withIdentifier: "toSecondView", sender: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondView" {
            let destinationVC = segue.destination as! secondViewController
            destinationVC.selectedSetLabel = chosenSet
            destinationVC.selectedchosenSet = chosenWords
            
            
        }
    }
    
    
    
}

