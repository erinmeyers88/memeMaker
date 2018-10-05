//
//  ViewController.swift
//  MemeMaker
//
//  Created by Erin Vincent on 10/5/18.
//  Copyright © 2018 Erin Vincent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    let topChoices = [CaptionOption(emoji: "🕶", caption: "You know what's cool?"),
                      CaptionOption(emoji: "💥", caption: "You what makes me mad?"),
                      CaptionOption(emoji: "💕", caption: "You know what I love?")]
    let bottomChoices = [CaptionOption(emoji: "😸", caption: "Cats wearing hats"),
                         CaptionOption(emoji: "🐶", caption: "Dogs carrying logs"),
                         CaptionOption(emoji: "🐒", caption: "Monkeys being funky")]

    override func viewDidLoad() {
        super.viewDidLoad()
        topCaptionSegmentControl.removeAllSegments()

        for choice in topChoices {
            topCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
        }

        topCaptionSegmentControl.selectedSegmentIndex = 0

        bottomCaptionSegmentControl.removeAllSegments()

        for choice in bottomChoices {
            bottomCaptionSegmentControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
        }

        bottomCaptionSegmentControl.selectedSegmentIndex = 0
        updateCaptions()
    }


    func updateCaptions() {
        let topIndex = topCaptionSegmentControl.selectedSegmentIndex
        topCaptionLabel.text = topChoices[topIndex].caption
        let bottomIndex = bottomCaptionSegmentControl.selectedSegmentIndex
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption

    }


    @IBOutlet weak var topCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var bottomCaptionSegmentControl: UISegmentedControl!
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!

    @IBAction func segmentControl(_ sender: Any) {
        updateCaptions()
    }
}

