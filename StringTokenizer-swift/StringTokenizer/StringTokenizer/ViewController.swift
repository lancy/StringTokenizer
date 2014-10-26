//
//  ViewController.swift
//  StringTokenizer
//
//  Created by lancy on 10/26/14.
//  Copyright (c) 2014 Lancy. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {
    @IBOutlet var inputTextView: NSTextView!
    @IBOutlet var outputTextView: NSTextView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func didTapTokenizeButton(sender: AnyObject) {
        if let inputString = self.inputTextView.string {
            NSLog("tokens = %@", inputString.wordTokens())
            self.outputTextView.string = inputString.separatedStringWithSeparator("/")
        }
    }
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

