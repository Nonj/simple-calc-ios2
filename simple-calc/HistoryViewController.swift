//
//  HistoryViewController.swift
//  simple-calc
//
//  Created by Nattanon Bunyatipanon on 10/20/18.
//  Copyright © 2018 Nattanon Bunyatipanon. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var scrollView: UIView!
    var numLabels : Int = 0
    var stringOfInputs : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLabels()

        // Do any additional setup after loading the view.
    }
    
    // Function to create labels for the passed in
    // string of inputs.
    func createLabels() {
        for text in stringOfInputs {
            
            let lbl = UILabel(frame: CGRect(x: 30, y: 50 + (25 * numLabels), width: 345, height: 17))
            
            lbl.text = text
            
            lbl.textColor = .white
            
            lbl.backgroundColor = .black
            
            lbl.font = UIFont.systemFont(ofSize: 17)
            
            lbl.numberOfLines = 0
            
            lbl.lineBreakMode = .byTruncatingTail
            
            lbl.sizeToFit()
            
            
            self.numLabels += 1
            self.scrollView.addSubview(lbl)
        }
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
