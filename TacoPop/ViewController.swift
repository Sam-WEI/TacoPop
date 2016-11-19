//
//  ViewController.swift
//  TacoPop
//
//  Created by Shengkun Wei on 11/18/16.
//  Copyright © 2016 Amy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DataServiceDelegate {
    
    @IBOutlet weak var list: UICollectionView!
    
    var ds = DataService.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        list.delegate = self
        list.dataSource = self
        
        list.register(TacoCell.self)
        
        ds.delegate = self
        
        ds.loadData()
        
    }
    
    func dataLoaded() {
        list.reloadData()
    }


}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return ds.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        cell.configureView(taco: ds.data[indexPath.row])
           
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 96, height: 96)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if let cell = collectionView.cellForItem(at: indexPath) as? TacoCell {
            cell.shakeItOff()
        }
    }
    
}

