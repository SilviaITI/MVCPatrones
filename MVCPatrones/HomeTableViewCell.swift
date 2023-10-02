//
//  HomeTableViewCell.swift
//  MVCPatrones
//
//  Created by Silvia Casanova Martinez on 2/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var viewHomeCell: UIView!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var nameHomeCell: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewHomeCell.layer.cornerRadius = 4.0
        viewHomeCell.layer.shadowColor = UIColor.gray.cgColor
        viewHomeCell.layer.shadowOffset = .zero
        viewHomeCell.layer.shadowOpacity = 0.7
        viewHomeCell.layer.shadowRadius = 4.0
        
        imageCell.layer.cornerRadius = 4.0
        imageCell.layer.opacity = 0.7
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        imageCell.image = nil
        nameHomeCell.text = nil
    }
    
    func updateView() {
      
    }

}
