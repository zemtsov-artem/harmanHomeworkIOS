//
//  NotesPreview.swift
//  HarmanHomeWork
//
//  Created by артем on 24.04.17.
//  Copyright © 2017 артем. All rights reserved.
//

import UIKit

class NotesPreview: UITableViewController {

    var defaultUD = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
        //work with data
        if (defaultUD.value(forKey: "NewNotes") != nil) {
            defNotes = defaultUD.value(forKey: "NewNotes") as! [String]
            notes = emptyNotesCollector(inputNote: fromStringArrToNoteArr(inputStringArr: defNotes))
        }else{
            defNotes = fromNoteClassToStringArray(inputNotes: notes)
            defaultUD.set(defNotes, forKey: "notes")
            //UserDefaults.standard.synchronize()
        }
        //change Nc->NB background color
        self.navigationController?.navigationBar.barTintColor = UIColor(hue: 0.6639, saturation: 0.5, brightness: 0.86, alpha: 1.0)
        let titleTextColor = UIColor(red: 0.9608, green: 1, blue: 0.3922, alpha: 1.0)
        //change Nc->NB text style
        self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:titleTextColor, NSFontAttributeName:UIFont(name:"HelveticaNeue", size: 26)!]
        self.navigationController?.navigationBar.tintColor = UIColor.white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        tableView.reloadData()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notes.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as UITableViewCell
        let note = notes[indexPath.row]
        cell.textLabel?.text = note.title
        cell.textLabel?.font = UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)  {
        if let editorVC = segue.destination as? addNotePage {
            //back button style
            let backItem = UIBarButtonItem()
            backItem.title = "List"
            navigationItem.backBarButtonItem = backItem
            //work with data
            if "CellSelected2" == segue.identifier {
                if let path = tableView.indexPathForSelectedRow {
                    editorVC.note = notes[path.row]
                }
            } else if "GoToAdd2" == segue.identifier {
                let note = Note(text: "")
                editorVC.note = note
                notes.append(note)
                
            }
        }
    }

}
