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
        v3 = 2
    }
}
