//
//  ViewController.swift
//  RickAndMortyAPI
//
//  Created by Consultant on 6/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    var items : [Character] = []

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let request = CharactersAPI().getCharacters(params: "") as! CharacterRequest
        items = request.results
    }


}

