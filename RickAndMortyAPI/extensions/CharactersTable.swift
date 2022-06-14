//
//  CharactersTable.swift
//  RickAndMortyAPI
//
//  Created by Consultant on 6/14/22.
//
import UIKit
import Foundation

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = items[indexPath.row].name
        cell.detailTextLabel?.text = " Status: \(items[indexPath.row].status) | Gender: \(items[indexPath.row].gender) "
        cell.imageView?.downloaded(from: items[indexPath.row].image)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let view = storyboard?.instantiateViewController(withIdentifier: "CharacterDetailViewController") as! CharacterDetailViewController
        view.C = items[indexPath.row]
        self.navigationController?.show(view, sender: nil)
        
    }
}
