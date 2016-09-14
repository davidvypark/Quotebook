//
//  HomeViewController.swift
//  Quotebook
//
//  Created by David Park on 9/13/16.
//  Copyright © 2016 DavidVY. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		setupScene()
	}
	
	override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 10
	}
	
	override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		
		let cell = tableView.dequeueReusableCellWithIdentifier("quoteCell", forIndexPath: indexPath)
		
		return cell
	}
	
	
	func setupScene() {
		view.backgroundColor = UIColor.whiteColor()
	}

}
