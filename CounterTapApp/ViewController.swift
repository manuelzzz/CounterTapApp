//
//  ViewController.swift
//  CounterTapApp
//
//  Created by Manuel Santos Souza on 22/02/25.
//

import UIKit

// challenge conditions:
// while number >= 10 - background color should be red
// while number >= 20 - background color should be blue
// when number == 30 - reset the counter and put the background color white again

class ViewController: UIViewController {

	@IBOutlet weak var numberLabel: UILabel!
	@IBOutlet weak var changeCounterButton: UIButton!

	var currentNumber: Int = 0

	override func viewDidLoad() {
		super.viewDidLoad()
		numberLabel.frame = CGRect(
			x: 0,
			y: numberLabel.frame.origin.y,
			width: view.frame.width,
			height: 100
		)

		let changeCounterButtonYPosition = numberLabel.frame.origin.y + numberLabel.frame.height + 40

		changeCounterButton.frame.origin = CGPoint(
			x: changeCounterButton.frame.origin.x,
			y: changeCounterButtonYPosition
		)
	}

	func changeViewBackgroundColor(to color: UIColor) {
		view.backgroundColor = color
	}

	@IBAction func changeCounterButtonTapped(_ sender: Any) {
		currentNumber += 1

		switch currentNumber {
		case 0..<11:
			changeViewBackgroundColor(to: .white)
		case 10..<21:
			changeViewBackgroundColor(to: .blue)
		case 20..<31:
			changeViewBackgroundColor(to: .red)
		default:
			currentNumber = 0
			changeViewBackgroundColor(to: .white)
		}

		numberLabel.text = "\(currentNumber)"
	}

}
