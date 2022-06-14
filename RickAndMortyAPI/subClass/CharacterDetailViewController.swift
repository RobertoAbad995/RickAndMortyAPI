//
//  CharacterDetailViewController.swift
//  RickAndMortyAPI
//
//  Created by Consultant on 6/14/22.
//

import UIKit

class CharacterDetailViewController: UIViewController {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var Img: UIImageView!
    @IBOutlet weak var Species: UILabel!
    @IBOutlet weak var Gender: UILabel!
    @IBOutlet weak var Statuas: UILabel!
    @IBOutlet weak var TypeCharacter: UILabel!
    @IBOutlet weak var Origin: UILabel!
    @IBOutlet weak var Episodes: UILabel!
    
    var C = Character()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblTitle.text = C.name
        Img.downloaded(from: C.image)
        Species.text = C.species
        Gender.text = C.gender
        Statuas.text = C.status
        TypeCharacter.text = C.type.isEmpty ? "N/A": C.type
        Origin.text = C.origin?.name
        Episodes.text = String(C.episode.count)
    }

}
