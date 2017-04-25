//
//  addNotePage.swift
//  HarmanHomeWork
//
//  Created by артем on 19.04.17.
//  Copyright © 2017 артем. All rights reserved.
//

import UIKit

class addNotePage: UIViewController, UITextViewDelegate {
    @IBOutlet var bodyText: UITextView!
   
    @IBAction func OkIsClicked(_ sender: Any) {
        note.contents = bodyText.text
        notes = emptyNotesCollector(inputNote: notes)
        defNotes =  fromNoteClassToStringArray(inputNotes:notes)
        UserDefaults.standard.set(defNotes, forKey: "NewNotes")
        self.navigationController?.popViewController(animated: true)
    }
    var note: Note!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bodyText.text = note.contents
    }
}
