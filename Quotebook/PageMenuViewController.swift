//
//  PageMenuViewController.swift
//  Quotebook
//
//  Created by David Park on 9/13/16.
//  Copyright © 2016 DavidVY. All rights reserved.
//

import UIKit
import PageMenu

class PageMenuViewController: UIViewController {
	
	var pageMenu: CAPSPageMenu?
	
	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = UIColor.quotesBackgroundColor()
		
		setupNavBar()
		setupPages()
	}
	
	func setupNavBar() {
		//let image = UIImage(named: "quoteBook")
		//let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
		//		imageView.contentMode = .ScaleAspectFit
		//		imageView.image = image
		//self.navigationItem.titleView = imageView
		
		
		self.title = "Quotebook"
		self.navigationController?.navigationBar.barTintColor = UIColor.peterRiverColor()
		self.navigationController?.navigationBar.shadowImage = UIImage()
		self.navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics: UIBarMetrics.Default)
		self.navigationController?.navigationBar.translucent = false
		self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
		self.navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.peterRiverColor(), NSFontAttributeName: UIFont(name: Constants.headerFont, size: 25)!]
	}
	
	func setupPages() {
		
		var controllerArray: [UIViewController] = []
		
		let homeVC = HomeViewController()
		homeVC.title = "Home"
		//homeVC.parentNavigationController = self.navigationController
		
		let discoverVC = DiscoverViewController()
		discoverVC.title = "Discover"
		//discoverVC.parentNavigationController = self.navigationController
		
		controllerArray.append(homeVC)
		controllerArray.append(discoverVC)

		
		let parameters: [CAPSPageMenuOption] = [
			.ScrollMenuBackgroundColor(UIColor.whiteColor()),
			.ViewBackgroundColor(UIColor.whiteColor()),
			.SelectionIndicatorColor(UIColor.peterRiverColor()),
			.BottomMenuHairlineColor(UIColor.whiteColor()),
			.MenuItemFont(UIFont(name: Constants.headerFont, size: 17.0)!),
			.MenuHeight(40.0),
			.MenuItemWidth(100.0),
			.CenterMenuItems(true),
			.SelectedMenuItemLabelColor(UIColor.peterRiverColor())
		]
		
		pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
		
		self.view.addSubview(pageMenu!.view)
		
	}


}
