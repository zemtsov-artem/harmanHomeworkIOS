//
//  HarmanHomeWorkTests.swift
//  HarmanHomeWorkTests
//
//  Created by артем on 19.04.17.
//  Copyright © 2017 артем. All rights reserved.
//

import XCTest
@testable import HarmanHomeWork

class HarmanHomeWorkTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    func testfromStringArrToNoteArr(){
        var NoteArray:[Note] = Array(repeatElement(Note(text:""), count: 5))
        let StringArray:[String] = ["first","second","third","fourth","fifth"]
        NoteArray = fromStringArrToNoteArr(inputStringArr: StringArray)
        for iter in 0..<5 {
            XCTAssertEqual(NoteArray[iter].contents, StringArray[iter])
        }
    }
    
    func testemptyNotesCollector(){
        var noteArray:[Note] = [Note(text:""),Note(text:"first"),Note(text:""),Note(text:"second"),Note(text:"")]
        let result:[Note]  = [Note(text:"first"),Note(text:"second")]
        noteArray = emptyNotesCollector(inputNote: noteArray)
        XCTAssertTrue(result.count == noteArray.count)
        for item in 0..<result.count{
            XCTAssertEqual(result[item].contents , noteArray[item].contents)
        }
        
    }
    
}
