//
//  Global.swift
//  My Shopping List
//
//  Created by Sua Musica on 09/01/24.
//

import Foundation

class Global {
    public func loadDictionary(medida chave:String, withName name:String) -> Float {
        var internalDic = NSMutableDictionary()
        internalDic = [
            "name": "felipe",
            "age": 20,
            "sizes": [
            // this works as expected
                "height": 1.75,
            // "height":1.85, -- with this is 0 (default value) so strange
                "weight": 78,
            ],
        ]
        
        let name = internalDic[name] as? String
        let sizes = internalDic["sizes"] as? [String: Any]
        let height = sizes?[chave] as? Float ?? 0

    
        print(height)
//        print(name)
        print(internalDic)
        
        return height
    }
}
