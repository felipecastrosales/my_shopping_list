//
//  Lists.swift
//  My Shopping List
//
//  Created by Sua Musica on 05/12/23.
//

import Foundation
import UIKit

class Lists:UIViewController {
    var v1 = 3;
    var v2 = 5;
    var v3 = 9;
    var vPi = 3.14
    var string1 = "Hello, World!"

    override func viewDidLoad() {
        v1 = v2 + v1;
        var v4 = 8;
        print(v1);
        print(string1)
        NSLog("Olá, %@, %i, %f", string1, v1, vPi)
        
        if (v2 == 5) {
            NSLog("v2 is 5");
        }

        if (v1 < v3) {
            NSLog("less tan v3");
        } else if (v1 == 10) {
            NSLog("is equal to 10");
        } else {
            NSLog("is greather than ");
        }
        
        v3 = 2
        
        ///
        
        let myArray = ["a", "b", "c"];
//        var arrayNs = NSArray()
        var arrayNs = NSMutableArray()
        var arrayMutable = NSMutableArray()
        
        arrayNs.add("felipe")
        arrayNs.add("castro")
        arrayNs.add("sales")
        var selectedIndex = 0
        
        
        print(arrayNs)
        
//        arrayNs.removeObject(at: 1)
//        print(arrayNs)
        
        for i in 0..<arrayNs.count {
            let element = arrayNs[i] as? String
            if (element == "castro") {
                selectedIndex = i
            }
        }
        
        arrayNs.removeObject(at: selectedIndex)

        print(arrayNs)
        
        arrayNs.replaceObject(at: selectedIndex, with: "santos")
        
        print(arrayNs)

        for i in myArray {
            NSLog("Olá, %@", i);
            if (i == "a") {
                NSLog("Olá when is a, %@", i);
            }
        }
        
        // for x in 0...v2 {
        // for x in 0..<v2 {
        for x in 0..<myArray.count {
            print(x);
        }
        
//        var dic1 = NSDictionary();
        var dic1 = NSMutableDictionary()
//        dic1.setValue("felipe", forKey: "name")
        dic1["name"] = "felipe"
        dic1["age"] = 20
        dic1["letters"] = myArray
        
        arrayMutable.add(dic1)
        arrayMutable.add(dic1)
        
        print(arrayMutable)
//        let nameVar:String = dic1["nome"] as! String
        let nameVar = dic1["name"] as! String

        print(dic1)
        print(dic1["name"])
        print(nameVar)
        
        dic1.removeObject(forKey: "name")
        print(dic1)
        print(dic1["name"])
        print(nameVar)
        
        ///
        ///
        ///
        
        var dictionary = NSMutableDictionary()
        dictionary = [
            "name": "felipe",
            "age": 20,
            "sizes": [
                "height": 1.85,
                "weight": 78,
            ],
        ]
        
        let dName = dictionary["name"] as? String ?? "default value"
        let dNameError = dictionary["name"] as? Int ?? 7
        
        print(dictionary)
        print(dName)
        print(dNameError)
        
        let sizes = dictionary["sizes"] as? NSDictionary;
        let height = sizes?["height"] as? Float ?? 0
        print(sizes)
        print(height)
        
        /// property
        
        var dictionaryForProperty = NSMutableDictionary()
        dictionaryForProperty = [
            "name": "felipe",
            "age": 20,
            "sizes": [
                "height": 1.85,
                "weight": 78,
            ],
        ];
        
        let redColor = UIColor.red
        
        ///
//        loadDictionary(medida: "height", withName: "name")
//        let heightFromReturn = loadDictionary2(medida: "height", withName: "name")
//        print(heightFromReturn)
        
        print("------------")
        
//        let heightFromGlobal = Global().loadDictionary(medida: "height", withName: "name")
        let heightFromGlobal = Global().loadDictionary(medida: "height", withName: "name")
        print(heightFromGlobal)
    }
    
    public func loadDictionary(medida chave:String, withName name:String) {
        var internalDic = NSMutableDictionary()
        internalDic = [
            "name": "felipe",
            "age": 20,
            "sizes": [
                "height": 1.85,
                "weight": 78,
            ],
        ];
        
        let name = internalDic[name] as? String
        let sizes = internalDic["sizes"] as? NSDictionary
        let height = sizes?[chave] as? Float ?? 0
        print(height)
        print(name)
        print(internalDic)
     
    }
    
    func loadDictionary2(medida chave:String, withName name:String) -> Float {
        var internalDic = NSMutableDictionary()
        internalDic = [
            "name": "felipe",
            "age": 20,
            "sizes": [
                "height": 1.85,
                "weight": 78,
            ],
        ];
        
        let name = internalDic[name] as? String
        let sizes = internalDic["sizes"] as? NSDictionary
        let height = sizes?[chave] as? Float ?? 0
        print(height)
        print(name)
        print(internalDic)
        
        return height
        
    }
}
