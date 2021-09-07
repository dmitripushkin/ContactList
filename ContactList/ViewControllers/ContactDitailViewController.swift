//
//  ContactDitailViewController.swift
//  ContactList
//
//  Created by Повелитель on 07.09.2021.
//

import UIKit

class ContactDitailViewController: UIViewController {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var phoneNumLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLabel.layer.cornerRadius = 15
        fullNameLabel.clipsToBounds = true
     

    
    }
    

}
