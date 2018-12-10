//
//  DetailsViewController.swift
//  LandmarkNY
//
//  Created by Sungjea Cho on 2018-12-04.
//  Copyright © 2018 nyu.edu. All rights reserved.
//

import Foundation
import UIKit


class DetailsViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loadDetails();
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //Input Helper
    func arrayFromContentsOfFileWithName(fileName: String) -> [String]? {
        guard let path = Bundle.main.path(forResource: fileName, ofType: "txt") else {
            return nil
        }
        
        do {
            let content = try String(contentsOfFile:path, encoding: String.Encoding.utf8)
            return content.components(separatedBy: "\n")
        } catch _ as NSError {
            return nil
        }
    }
    
    
    
    func loadDetails(){
        let nameOfFile = "inputFile2"
        var landmarks = [String]()
        landmarks = arrayFromContentsOfFileWithName(fileName: nameOfFile)!
        
        var i = 0
        while(i<17){
            let temp = landmarks[i];
            
            
            let splitted = temp.components(separatedBy: ";");
            let title = splitted[1]
            let description = splitted[2]
            let image = splitted[3]
            
           
            
            i += 1;
            
            
        }
        
        
       
        
        
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}


