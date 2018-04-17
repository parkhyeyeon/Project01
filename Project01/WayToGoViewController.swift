//
//  WayToGoViewController.swift
//  Project01
//
//  Created by SWUCOMPUTER on 2018. 4. 12..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class WayToGoViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var wayToGoImageView: UIImageView!
    var wayStr: String?
    
    //1호선 1번째 놀거리 길찾기 (버스/지하철) 이미지부터
    //9호선 3번째 놀거리 길찾기 (버스/지하철) 이미지까지
    //전부 찾아서 저장하기
    //41(35+6)*2 = 84
    let line11Image = UIImage(named: "~.jpg")
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

 
    @IBAction func toggleSegment(_ sender: UISegmentedControl) {
        if sender.titleForSegment(at: sender.selectedSegmentIndex) == "버스" {
            wayToGoImageView.image = line11Image //이런식으로
            
        } else { //지하철
            
            
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
