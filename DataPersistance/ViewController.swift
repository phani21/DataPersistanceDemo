//
//  ViewController.swift
//  DataPersistance
//
//  Created by IMCS2 on 2/12/19.
//  Copyright © 2019 com.phani. All rights reserved.
//Develop

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var number: UITextField!
    @IBOutlet weak var saveOutlet: UIButton!
    
    @IBAction func clear(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "Name")
        UserDefaults.standard.removeObject(forKey: "Number")
        name.text=""
        number.text=""
        saveOutlet.setTitle("SAVE", for: .normal)
        
    }
    @IBAction func save(_ sender: UIButton) {
        print("\(String(describing: name.text))")
        print("\(String(describing: number.text))")
        UserDefaults.standard.set(name.text,forKey:"Name")
        UserDefaults.standard.set(number.text,forKey:"Number")
        viewDidLoad()
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        saveOutlet.setTitle("SAVE", for: .normal)
        if let na:String=UserDefaults.standard.value(forKey:"Name") as? String{
              name.text=na
        }
        if let nu:String=UserDefaults.standard.value(forKey:"Number") as? String{
              number.text=nu
             saveOutlet.setTitle("UPDATE", for: .normal)
        }
    
        
        
    
//        print("viewDIDLOAD()"+"\(na)")
        
        
        
    }


}

