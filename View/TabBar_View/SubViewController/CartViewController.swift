//
//  CartViewController.swift
//  quantum-iOS-project
//
//  Created by suryansh Bisen on 03/08/22.
//

import UIKit

class CartViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    
    @IBOutlet weak var tableView: UITableView!
    let basketData = BasketDM.example()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //table view assign
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return basketData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as? ProductTableViewCell else {
            return UITableViewCell()
        }
        let currIndex = indexPath.row
        cell.priceLable.text = basketData[currIndex].totalPrice
        cell.basketData = basketData[currIndex].basketProduct
        cell.numberProductLable.text = "\(basketData[currIndex].basketProduct.count) Products"
        cell.cellNameLable.text = basketData[currIndex].nameBasket
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
