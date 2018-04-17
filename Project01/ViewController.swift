//
//  ViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2018. 4. 12..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet var pickerLine: UIPickerView!
    
    let lineArray:[String] = ["1호선", "2호선", "3호선", "4호선", "5호선", "6호선", "7호선", "8호선", "9호선"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return lineArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return lineArray[row]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toLine1View" {
            
            let line: String = lineArray[self.pickerLine.selectedRow(inComponent: 0)]
            
            let line1VC = segue.destination as! Line1ViewController
            line1VC.title = line
            
            var outString: String = "< "
            outString += line
            outString += " >의 핫플레이스 검색목록입니다."
            line1VC.info = outString
            
        }
    }

}

