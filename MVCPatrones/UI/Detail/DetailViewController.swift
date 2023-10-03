//
//  DetailViewController.swift
//  MVCPatrones
//
//  Created by Silvia Casanova Martinez on 3/10/23.
//

import UIKit

class DetailViewController: UIViewController {

    var characterData: CharacterModel?
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var nameDetail: UILabel!
    @IBOutlet weak var descriptionDetail: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(characterData: characterData)
        // Do any additional setup after loading the view.
    }

    
    func updateView(characterData: CharacterModel?) {
        update(name: characterData?.name)
        update(image: characterData?.image)
        update(description: characterData?.description)
    }
    private func update(name: String?) {
        nameDetail.text = name ?? ""
    }
    private func update(description: String?) {
        descriptionDetail.text = description ?? ""
    }
    private func update(image: String?) {
        imageDetail.image = UIImage(named: image ?? "")
    }
    
 

}
