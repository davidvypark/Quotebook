//
//  QuoteTableViewCell.swift
//  Quotebook
//
//  Created by David Park on 9/13/16.
//  Copyright © 2016 DavidVY. All rights reserved.
//

import UIKit
import SnapKit

class QuoteTableViewCell: UITableViewCell {
	
	static let cellIdentifier = "quoteCell"
	
	let profilePicture = UIImageView()
	let authorLabel = UILabel()
	let quoteLabel = UILabel()
	let line = UIView()
	
	override func layoutSubviews() {
		super.layoutSubviews()
		
		setupScene()
	}
	
	func setupScene() {
		
		self.addSubview(line)
		line.snp_makeConstraints { (make) in
			make.bottom.equalTo(self.snp_bottom)
			make.centerX.equalTo(self.snp_centerX)
			make.width.equalTo(self.snp_width).multipliedBy(0.73)
			make.top.equalTo(self.snp_bottom).offset(-2)
		}
		line.backgroundColor = UIColor.peterRiverColor()
		
		self.addSubview(profilePicture)
		profilePicture.snp_makeConstraints { (make) in
			make.width.equalTo(self.snp_width).multipliedBy(0.0816)
			make.height.equalTo(self.snp_width).multipliedBy(0.0816)
			make.left.equalTo(self.snp_left).offset(20)
			make.top.equalTo(self.snp_top).offset(20)
		}
		profilePicture.image = UIImage(named: "profilePic")!.circle
		
		self.addSubview(authorLabel)
		authorLabel.snp_makeConstraints { (make) in
			make.left.equalTo(profilePicture.snp_right).offset(9)
			make.top.equalTo(profilePicture.snp_centerY).offset(-10)
			make.width.equalTo(self.snp_width)
		}
		authorLabel.text = "David Park"
		authorLabel.font = UIFont(name: Constants.font, size: 15)
		authorLabel.textColor = UIColor.blackColor()
		
		self.addSubview(quoteLabel)
		quoteLabel.snp_makeConstraints { (make) in
			make.width.equalTo(self.snp_width).multipliedBy(0.785)
			make.centerX.equalTo(self.snp_centerX)
			make.top.equalTo(authorLabel).offset(35)
			make.bottom.equalTo(line.snp_top).offset(-25)
		}
		quoteLabel.numberOfLines = 0
		quoteLabel.lineBreakMode = .ByWordWrapping
		quoteLabel.textColor = UIColor.peterRiverColor()
		quoteLabel.textAlignment = .Center
		quoteLabel.text = "\"You have power over your mind - not outside events. Realize this, and you will find strength\""
		quoteLabel.font = UIFont(name: Constants.font, size: 20)
		
		
		
		
	}
	
	

}
