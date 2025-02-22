//
//  ViewController.swift
//  CounterTapApp
//
//  Created by Manuel Santos Souza on 22/02/25.
//

import UIKit

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

	@IBAction func changeCounterButtonTapped(_ sender: Any) {
		currentNumber += 1
		numberLabel.text = "\(currentNumber)"
	}

}
