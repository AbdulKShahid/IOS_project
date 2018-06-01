//
//  Country.swift
//  CountriesList
//
//  Created by Abdul on 01/06/18.
//  Copyright © 2018 Abdul. All rights reserved.
//

import UIKit

class Country {
    var name: String
    var capital: String
    var image: UIImage
    var description: String
    
    init(name: String,
         capital: String,
         description: String){
        self.name = name
        self.capital = capital
        self.description = description
        
        image = UIImage(named: self.name)!
    }
}
