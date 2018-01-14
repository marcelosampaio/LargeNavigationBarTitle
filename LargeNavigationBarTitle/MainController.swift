//
//  MainController.swift
//  LargeNavigationBarTitle
//
//  Created by Marcelo on 1/14/18.
//  Copyright © 2018 Marcelo Sampaio. All rights reserved.
//

import UIKit

class MainController: UITableViewController {

    
    // MARK: - Properties
    var sources = [String]()
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // navigation bar large title
        navigationController?.navigationBar.prefersLargeTitles = true
        
        // load app data source
        loadSource()
    }


    // MARK: - Application Data Source
    private func loadSource() {
        sources.append("Abrigos")
        sources.append("Bacias Contentoras");
        sources.append("Casas de Força");
        sources.append("Dormitórios")
        sources.append("Escritórios")
        sources.append("Farmácias")
        sources.append("Garagens de Barcos")
        sources.append("Hospedarias")
        sources.append("Informações")
        sources.append("Jardins")
        sources.append("Lares para Idosos")
        sources.append("Mananciais de Água")
        sources.append("Natureza")
        sources.append("Ornamentos Selvagens")
        sources.append("Padarias")
        
        tableView.reloadData()
    
    }
    
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sources.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.imageView?.image = UIImage.init(named: "detailImage")
        cell.textLabel?.text = sources[indexPath.row]

        return cell
    }
 


}
