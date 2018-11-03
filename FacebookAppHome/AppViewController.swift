//
//  AppViewController.swift
//  FacebookAppHome
//
//  Created by Nick Swift on 11/3/18.
//  Copyright © 2018 Nick Swift. All rights reserved.
//

import UIKit

class AppViewController: UIViewController {
  
  // MARK: - View Lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    self.view.backgroundColor = .red
    
    // temp close button
    let topLeftFrame = CGRect(x: 0, y: 0, width: 100, height: 100)
    let closeButton = UIButton(frame: topLeftFrame)
    closeButton.setTitle("close", for: .normal)
    closeButton.addTarget(self, action: #selector(closeAction), for: .touchUpInside)
    self.view.addSubview(closeButton)
  }
  
  @objc func closeAction() {
    self.dismiss(animated: true, completion: nil)
  }
  
}
