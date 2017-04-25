//
//  Note.swift
//  SwiftTextKitNotepad
//
//  Created by Gabriel Hauber on 18/07/2014.
//  Copyright (c) 2014 Gabriel Hauber. All rights reserved.
//

import Foundation

class Note {
  var contents: String
  var title: String {
    let lines = contents.components(separatedBy: CharacterSet.newlines) as [String]
    return lines[0]
  }

  init(text: String) {
    contents = text
  }
}

//////////////////////////////////////////////////////////////////////
func fromNoteClassToStringArray(inputNotes:[Note]) -> [String] {
    var tmpArr = Array(repeatElement("", count: inputNotes.count))
    for iter in 0..<inputNotes.count{
        tmpArr[iter] = inputNotes[iter].contents
    }
    return tmpArr
}

//////////////////////////////////////////////////////////////////////
func fromStringArrToNoteArr(inputStringArr:[String]) -> [Note]{
    var resultValue:[Note] = [Note(text:"")]
    for iter in 0..<inputStringArr.count{
        resultValue.insert(Note(text:inputStringArr[iter]), at:iter)
    }
    return resultValue
}

//////////////////////////////////////////////////////////////////////
func emptyNotesCollector(inputNote:[Note]) ->[Note]{
    var resultValue = inputNote
    var indexToDelete:[Int] = []
    
    for item in 0..<resultValue.count{
        if resultValue[item].contents.isEmpty{
            indexToDelete.insert(item, at: 0)
        }
    }
    //in the next release add checking the emptiness like a "     "
    if (indexToDelete.count != 0 ){
        for emptyValueIndex in indexToDelete{
            resultValue.remove(at: emptyValueIndex)
        }
    }
    return resultValue
}

//////////////////////////////////////////////////////////////////////
// some default notes to play with
var notes = [
  Note(text: "Shopping List\r\r1. Cheese\r2. Biscuits\r3. Sausages\r4. IMPORTANT Cash for going out!\r5. -potatoes-\r6. A copy of iOS8 by tutorials\r7. A new iPhone\r8. A present for mum"),
  Note(text: "Meeting notes\rA long and drawn out meeting, it lasted hours and hours and hours!"),
  Note(text: "Perfection ... \n\nPerfection is achieved not when there is nothing left to add, but when there is nothing left to take away - Antoine de Saint-Exupery"),
  Note(text: "Notes on Swift\nThis new language from Apple is changing iOS development as we know it!"),
  Note(text: "Meeting notes\rA dfferent meeting, just as long and boring"),
  Note(text: "A collection of thoughts\rWhy do birds sing? Why is the sky blue? Why is it so hard to create good test data?")
]
var defNotes:[String] = fromNoteClassToStringArray(inputNotes: notes)




