//
//  ContactViewController.swift
//  ContactList
//
//  Created by Повелитель on 07.09.2021.
//

import UIKit

class ContactViewController: UITableViewController {
    
    private var contactList = Contact.getContactList()

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactID", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let contact = contactList[indexPath.row]
        
        content.text = contact.fullName

        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDitailVC = segue.destination as? ContactDitailViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let contact = contactList[indexPath.row]
        contactDitailVC.contact = contact
    }
}
