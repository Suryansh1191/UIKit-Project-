//
//  ProductTableViewCell.swift
//  quantum-iOS-project
//
//  Created by suryansh Bisen on 04/08/22.
//

import UIKit

class ProductTableViewCell: UITableViewCell {

    @IBOutlet weak var collectionVIew: UICollectionView!
    @IBOutlet weak var cellNameLable: UILabel!
    @IBOutlet weak var numberProductLable: UILabel!
    @IBOutlet weak var priceLable: UILabel!
    
    var basketData: [ProductModel] = []
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        collectionVIew.dataSource = self
        collectionVIew.delegate = self
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func delectCartButton(_ sender: Any) { }
    @IBAction func CheckoutButton(_ sender: Any) { }
    

}

extension ProductTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return basketData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCollectionViewCell", for: indexPath) as? ProductCollectionViewCell else{
            print("error")
            return UICollectionViewCell()
        }
        let index = indexPath.row
        let uiImage = basketData[index].productImage
        cell.image.image = uiImage
        cell.priceLable.text = "Rs. \(basketData[index].price)"
        cell.nameLAble.text = basketData[index].productName
        cell.quntityLable.text = basketData[index].productQuntity
        
        print("called")
        return cell
    }
    
    
}
