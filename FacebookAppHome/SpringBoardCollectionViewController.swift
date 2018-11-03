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
    self.view.backgroundColor = .white
    
    setupCollectionView()
  }
  
  func setupCollectionView() {
    collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: UICollectionViewFlowLayout())
    collectionView.backgroundColor = .clear
    
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
    let model = AppIconCollectionViewCellModel(appLogo: nil, appTitle: "FacebookAppHome", badgeNumber: 2)
    cell.update(model: model)
    return cell
  }
  
  func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }
  
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 22
  }
  
}

// MARK: - UICollectionView
extension SpringBoardCollectionViewController: UICollectionViewDelegateFlowLayout {
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let appWidth = UIScreen.main.bounds.width / 4 - 24
    return CGSize(width: appWidth, height: appWidth + 12)
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 8
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 16
  }
  
  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 28, left: 16, bottom: 0, right: 16)
  }
  
}
