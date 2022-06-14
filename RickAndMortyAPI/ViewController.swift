//
//  ViewController.swift
//  RickAndMortyAPI
//
//  Created by Consultant on 6/14/22.
//

import UIKit

class ViewController: UIViewController {
    
    var items : [Character] = []
    var index : Int = 1
    var param : String = ""
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.delegate = self
        tableView.dataSource = self
        loadData()
    }

    private func loadData(){
        let request = CharactersAPI().getCharacters(params: param, pageIndex: index) as! CharacterRequest
        items = request.results
        
        tableView.reloadData()
    }

    @IBAction func btnBoth(_ sender: Any) {
        param = ""
        index = 1
        loadData()
    }
    @IBAction func btnAlive(_ sender: Any) {
        index = 1
        param = "alive"
        loadData()
    }
    @IBAction func btnDead(_ sender: Any) {
        param = "dead"
        index = 1
        loadData()
    }
    @IBAction func btnPrevious(_ sender: Any) {
        index -= 1
        index = index < 0 ? 0:index
        loadData()
        
    }
    @IBAction func btnNext(_ sender: Any) {
        index += 1
        loadData()
    }
}

