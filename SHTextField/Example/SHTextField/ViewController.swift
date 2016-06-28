//
//  ViewController.swift
//  SHTextField
//
//  Created by Sucharu Hasija on 06/28/2016.
//  Copyright (c) 2016 Sucharu Hasija. All rights reserved.
//

import UIKit



class ViewController: UIViewController  , SHTextFieldProtocol{

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var tfExample: SHTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(animated: Bool) {
        
        self.tfExample.initilizeSHTextFieldWithEmailHavingDefaultSettings()
       
        
        
    }

    @IBAction func resignResponder(sender: AnyObject) {
        
        self.tfExample.resignFirstResponder()
    }
    @IBAction func typeChanged(sender: UISegmentedControl) {
        
        
        self.tfExample.text = ""
        self.tfExample.placeholder = ""
        switch sender.selectedSegmentIndex {
        case 0:
            self.tfExample.initilizeSHTextFieldWithEmailHavingDefaultSettings()
   
        case 1:
            self.tfExample.initilizeSHTextFieldWithSimplePasswordHavingRangeFrom(6, to: 15)
     
        
        case 2:
            self.tfExample.initilizeSHTextFieldWithDateOfBirthHavingAgeLimitFrom(15, to: 30)
         
        case 3:
            
            self.tfExample.intitlizeSHTextFieldWithTypeUserDefinedMustAddDelegateWithAllowedCharacterRangeFrom(15, to: 20, andSuggestionArray: ["SHTextField","shtextField"])
            self.tfExample.delegateOfSHTextField = self
            
            
            
        default:
            return
        }
        
        
        
        
    }

    // MARK:SHTextFieldProtocol
    
    func isValidOnCondition(text:String) -> Bool
    {
        
        if text.containsString("s")
        {
        
        return true
        }
       
        
        return false
      
    
    }
    
    // 5c. Change the Content of the Text in TextFeild As per Your Need and To change the Value of the Progress bar just below of the TextField.
    
    func valueOfUnderProgrssBarWhileTypingWithText(text:String) -> (Float,String)
    {
    
    
    
    return (1.0, text)
    
    }
}

