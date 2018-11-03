//
//  AppIconCollectionViewCell.swift
//  FacebookAppHome
//
//  Created by Nick Swift on 10/31/18.
//  Copyright © 2018 Nick Swift. All rights reserved.
//

import UIKit

struct AppIconCollectionViewCellModel {
  var appLogo: UIImage?
  var appTitle: String
  var badgeNumber: Int
}

class AppIconCollectionViewCell: UICollectionViewCell {
  
  // MARK: - Subviews
  var appLogoImageView: UIImageView!
  var appTitleLabel: UILabel!
  var badgeNumberLabel: UILabel!
  
  // MARK: - Init
  override init(frame: CGRect) {
    super.init(frame: frame)
    
//    self.layer.borderColor = UIColor.lightGray.cgColor
//    self.layer.borderWidth = 0.5
    
    setupAppTitleLabel()
    setupAppLogoImageView()
    setupBadgeNumberLabel()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: - View Life
  func update(model: AppIconCollectionViewCellModel) {
    appTitleLabel.text = model.appTitle
    appLogoImageView.image = model.appLogo
    badgeNumberLabel.text = "\(model.badgeNumber)"
  }
}

// MARK: - Subview Setup
extension AppIconCollectionViewCell {
  
  func setupAppTitleLabel() {
    appTitleLabel = UILabel(frame: .zero)
    appTitleLabel.translatesAutoresizingMaskIntoConstraints = false
    appTitleLabel.textAlignment = .center
    appTitleLabel.font = UIFont.systemFont(ofSize: 12, weight: .regular)
    appTitleLabel.textColor = .darkGray
    self.addSubview(appTitleLabel)
    NSLayoutConstraint.activate(
      [appTitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
       appTitleLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
       appTitleLabel.heightAnchor.constraint(equalToConstant: 12),
       appTitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor)])
  }
  
  func setupAppLogoImageView() {
    appLogoImageView = UIImageView(frame: .zero)
    appLogoImageView.translatesAutoresizingMaskIntoConstraints = false
    appLogoImageView.backgroundColor = .blue
    appLogoImageView.layer.cornerRadius = 18
    appLogoImageView.layer.masksToBounds = true
    self.addSubview(appLogoImageView)
    NSLayoutConstraint.activate(
      [appLogoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 6),
       appLogoImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -6),
       appLogoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 6),
       appLogoImageView.bottomAnchor.constraint(equalTo: appTitleLabel.topAnchor, constant: -6)])
  }
  
  func setupBadgeNumberLabel() {
    badgeNumberLabel = UILabel(frame: .zero)
  }
}
