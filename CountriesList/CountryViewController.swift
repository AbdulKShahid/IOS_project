//
//  CountryViewController.swift
//  CountriesList
//
//  Created by Abdul on 01/06/18.
//  Copyright © 2018 Abdul. All rights reserved.
//

import UIKit

class CountryViewController: UIViewController {

    @IBOutlet weak var detailCountryDesciption: UITextView!
    @IBOutlet weak var detailCountryCapital: UILabel!
    @IBOutlet weak var detailCountryName: UILabel!
    @IBOutlet weak var detailCountryImage: UIImageView!
    
    var country:Country?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailCountryName.text = country?.name
        detailCountryCapital.text = country?.capital
        detailCountryDesciption.text = country?.description
        detailCountryImage.image = country?.image
    }


}
