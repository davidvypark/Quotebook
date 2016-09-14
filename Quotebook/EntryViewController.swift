//
//  EntryViewController.swift
//  Quotebook
//
//  Created by David Park on 9/13/16.
//  Copyright © 2016 DavidVY. All rights reserved.
//

import UIKit
import SnapKit

class EntryViewController: UIViewController {
	
	let titleHeaderLabel = UILabel()
	let taglineLabel = UILabel()
	let loginButton = UIButton()
	let createAccountButton = UIButton()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupScene()
	}
	
	func loginButtonPressed() {
		
	}
	
	func createAccountButtonPressed() {
		
	}
	
	func setupScene() {
		
		let widthRatio = 0.7
		let heightRatio = 0.0732
		
		view.backgroundColor = UIColor.peterRiverColor()
		
		view.addSubview(titleHeaderLabel)
		titleHeaderLabel.snp_makeConstraints { (make) in
			make.centerX.equalTo(view.snp_centerX)
			make.centerY.equalTo(view.snp_centerY).dividedBy(2.4)
			make.width.equalTo(view.snp_width).multipliedBy(widthRatio)
		}
		titleHeaderLabel.text = "Quotebook"
		titleHeaderLabel.font = UIFont(name: Constants.headerFont, size: 43)
		titleHeaderLabel.textColor = UIColor.whiteColor()
		titleHeaderLabel.textAlignment = .Center
		
		view.addSubview(taglineLabel)
		taglineLabel.snp_makeConstraints { (make) in
			make.centerX.equalTo(view.snp_centerX)
			make.centerY.equalTo(view.snp_centerY).dividedBy(1.26)
			make.width.equalTo(titleHeaderLabel)
		}
		taglineLabel.text = "\"Enlighten yourself by discovering new quotes everyday\""
		taglineLabel.textColor = UIColor.whiteBlueTint()
		taglineLabel.font = UIFont(name: Constants.font, size: 22)
		taglineLabel.textAlignment = .Center
		taglineLabel.numberOfLines = 3
		
		view.addSubview(loginButton)
		loginButton.snp_makeConstraints { (make) in
			make.centerX.equalTo(view.snp_centerX)
			make.centerY.equalTo(view.snp_centerY).multipliedBy(1.27)
			make.width.equalTo(taglineLabel.snp_width)
			make.height.equalTo(view.snp_height).multipliedBy(heightRatio)
		}
		loginButton.backgroundColor = UIColor.whiteColor()
		loginButton.setTitle("Log in", forState: .Normal)
		loginButton.titleLabel?.font = UIFont(name: Constants.font, size: 27)
		loginButton.setTitleColor(UIColor.peterRiverColor(), forState: .Normal)
		loginButton.layer.cornerRadius = view.frame.height * CGFloat(heightRatio / 2)
		loginButton.addTarget(self, action: #selector(loginButtonPressed), forControlEvents: .TouchUpInside)
		
		view.addSubview(createAccountButton)
		createAccountButton.snp_makeConstraints { (make) in
			make.centerX.equalTo(view.snp_centerX)
			make.centerY.equalTo(view.snp_centerY).multipliedBy(1.47)
			make.width.equalTo(loginButton.snp_width)
			make.height.equalTo(loginButton.snp_height)
		}
		
		createAccountButton.backgroundColor = UIColor.peterRiverColor()
		createAccountButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
		createAccountButton.setTitle("Create Account", forState: .Normal)
		createAccountButton.titleLabel?.font = UIFont(name: Constants.font, size: 27)
		createAccountButton.layer.cornerRadius = view.frame.height * CGFloat(heightRatio / 2)
		createAccountButton.layer.borderColor = UIColor.whiteColor().CGColor
		createAccountButton.layer.borderWidth = 2
		createAccountButton.addTarget(self, action: #selector(createAccountButtonPressed), forControlEvents: .TouchUpInside)
		
		
		
		
		
		
		
	}

}
