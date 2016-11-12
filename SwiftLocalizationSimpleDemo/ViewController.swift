//
//  ViewController.swift
//  SwiftLocalizationSimpleDemo
//
//  Created by Nazmul Hasan on 11/12/16.
//  Copyright © 2016 Nazmul Hasan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var entireText: UITextField!
    
    @IBOutlet var displayResult: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //User region setting return
        let locale = NSLocale.current
        //Returns true if the locale uses the metric system (Note: Only three countries do not use the metric system: the US, Liberia and Myanmar.)
        let isMetric = locale.usesMetricSystem
        sendForPrint(info: isMetric)
        
        //Returns the currency code of the locale. For example, for “zh-Hant-HK”, returns “HKD”.
        let currencyCode  = locale.currencyCode
          sendForPrint(info: currencyCode)
        
        //Returns the currency symbol of the locale. For example, for “zh-Hant-HK”, returns “HK$”.
        let currencySymbol = locale.currencySymbol
         sendForPrint(info: currencySymbol)
        
    }
    
    var printItem = [String]()
    
    func sendForPrint(info:Any){
        
        printItem.append("\(info)")
      
        sendForPrint(info: printItem , saparteBy : nil)
    
    }
    
    func sendForPrint(info:[String] , saparteBy : String?){
    
        for data in info{
         
            print(data)
        
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submiBtn(_ sender: AnyObject) {
 
    }


}

