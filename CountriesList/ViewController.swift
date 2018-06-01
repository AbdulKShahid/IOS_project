//
//  ViewController.swift
//  CountriesList
//
//  Created by Abdul on 31/05/18.
//  Copyright © 2018 Abdul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var countries = [Country]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let australia = Country(name: "Australia", capital: "Canberra", description: "Australia is a country and continent surrounded by the Indian and Pacific oceans. Its major cities – Sydney, Brisbane, Melbourne, Perth, Adelaide – are coastal. Its capital, Canberra, is inland. The country is known for its Sydney Opera House, the Great Barrier Reef, a vast interior desert wilderness called the Outback, and unique animal species like kangaroos and duck-billed platypuses.")
        countries.append(australia)
        
        let belgium = Country(name: "Belgium", capital: "Brussels", description: "Belgium, a country in Western Europe, is known for medieval towns, Renaissance architecture and as headquarters of the European Union and NATO. The country has distinctive regions including Dutch-speaking Flanders to the north, French-speaking Wallonia to the south and a German-speaking community to the east. The bilingual capital, Brussels, has ornate guildhalls at Grand-Place and elegant art-nouveau buildings.")
        countries.append(belgium)
        
        let canada = Country(name: "Canada", capital: "Ottawa", description: "Canada is a North American country stretching from the U.S. in the south to the Arctic Circle in the north. Major cities include massive Toronto, west coast film centre Vancouver, French-speaking Montréal and Québec City, and capital city Ottawa. Canada's vast swaths of wilderness include lake-filled Banff National Park in the Rocky Mountains. It's also home to Niagara Falls, a famous group of massive waterfalls.")
        countries.append(canada)
        
        let england = Country(name: "England", capital: "London", description: "England, birthplace of Shakespeare and The Beatles, is a country in the British Isles bordering Scotland and Wales. The capital, London, on the River Thames, is home of Parliament, Big Ben and the 11th-century Tower of London. It's also a multicultural, modern hub for the arts and business. Other large cities are Manchester, Birmingham, Liverpool, Bristol and the university centres of Oxford and Cambridge.")
        countries.append(england)
        
        let france = Country(name: "France", capital: "Paris", description: "France, in Western Europe, encompasses medieval cities, alpine villages and Mediterranean beaches. Paris, its capital, is famed for its fashion houses, classical art museums including the Louvre and monuments like the Eiffel Tower. The country is also renowned for its wines and sophisticated cuisine. Lascaux’s ancient cave drawings, Lyon’s Roman theater and the vast Palace of Versailles attest to its rich history.")
        countries.append(france)
        
        let germany = Country(name: "Germany", capital: "Berlin", description: "Germany is a Western European country with a landscape of forests, rivers, mountain ranges and North Sea beaches. It has over 2 millennia of history. Berlin, its capital, is home to art and nightlife scenes, the Brandenburg Gate and many sites relating to WWII. Munich is known for its Oktoberfest and beer halls, including the 16th-century Hofbräuhaus. Frankfurt, with its skyscrapers, houses the European Central Bank.")
        countries.append(germany)
        
        let usa = Country(name: "USA", capital: "Washington D.C.", description: "The U.S. is a country of 50 states covering a vast swath of North America, with Alaska in the northwest and Hawaii extending the nation’s presence into the Pacific Ocean. Major Atlantic Coast cities are New York, a global finance and culture center, and capital Washington, DC. Midwestern metropolis Chicago is known for influential architecture and on the west coast, Los Angeles' Hollywood is famed for filmmaking.")
        countries.append(usa)
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "basicCell", for: indexPath) as! CustomTableViewCell
        cell.countryName.text = countries[indexPath.row].name
        cell.capitalName.text = countries[indexPath.row].capital
        cell.countryImage.image = countries[indexPath.row].image
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CountryViewController {
            destination.country = countries[(tableView.indexPathForSelectedRow?.row)!]
    }


}
}

