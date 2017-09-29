//
//  ViewController.swift
//  UICollectionWIthCustom
//
//  Created by Apple on 29/09/17.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource{

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Do any additional setup after loading the view, typically from a nib.
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 100, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: view.frame.size.width/2-15, height: 150)
        
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 10
        
        var collectionView: UICollectionView!
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CCell")
        collectionView.backgroundColor = UIColor.white
        self.view.addSubview(collectionView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 14
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CCell", for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.orange
       // cell.frame.size.width = view.frame.size.width/2
        return cell
    }
    


}

