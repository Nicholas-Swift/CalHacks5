//
//  SpringBoardCollectionViewController.swift
//  FacebookAppHome
//
//  Created by Nick Swift on 10/31/18.
//  Copyright © 2018 Nick Swift. All rights reserved.
//

import UIKit

class SpringBoardCollectionViewController: UIViewController {
  
  // MARK: - Subviews
  var collectionView: UICollectionView!
  
  // MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .red
    
    setupCollectionView()
  }
  
  func setupCollectionView() {
    collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
    collectionView.backgroundColor = .green
    
    collectionView.dataSource = self
    collectionView.delegate = self
    
    collectionView.register(AppIconCollectionViewCell.self, forCellWithReuseIdentifier: "AppIconCollectionViewCell")
    self.view.addSubview(collectionView)
  }
  
}

// MARK: - UICollectionViewDelegate
extension SpringBoardCollectionViewController: UICollectionViewDelegate {

}

// MARK: - UICollectionViewDataSource
extension SpringBoardCollectionViewController: UICollectionViewDataSource {
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppIconCollectionViewCell", for: indexPath) as! AppIconCollectionViewCell
    cell.backgroundColor = .blue
    let model = AppIconCollectionViewCellModel(appLogo: nil, appTitle: "title", badgeNumber: 2)
    cell.update(model: model)
    return cell
  }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 12
  }
  
}

// MARK: - UICollectionView
extension SpringBoardCollectionViewController: UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: 64, height: 64)
  }
  
}
