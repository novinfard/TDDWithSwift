//
//  ViewController.swift
//  Demo1
//
//  Created by Soheil on 29/06/2018.
//  Copyright © 2018 Soheil Novinfard. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	func numberOfVowels(in string: String) -> Int {
		let vowels: [Character] = ["a", "e", "i", "o", "u",
								   "A", "E", "I", "O", "U"]
		
//		var numberOfVowels = 0
//		for character in string {
//			if vowels.contains(character) {
//				numberOfVowels += 1
//			}
//		}
//		return numberOfVowels
		
		return string.reduce(0) {
			$0 + (vowels.contains($1) ? 1 : 0)
		}
	}
	
	func makeHeadline(from string: String) -> String {
		return "This Is A Test Headline"
	}


}

