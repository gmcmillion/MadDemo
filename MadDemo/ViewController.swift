//
//  ViewController.swift
//  MadDemo
//
//  Created by Gregg McMillion on 9/24/18.
//  Copyright © 2018 Gregg McMillion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var textField: UITextField!
  var backgroundColor: UIColor!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    backgroundColor = view.backgroundColor;
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }

  @IBAction func didTapButton(_ sender: Any) {
    textLabel.textColor = UIColor.red;
  }
  
  @IBAction func didTapViewButton(_ sender: Any) {
    view.backgroundColor = UIColor.blue;
  }
  
  @IBAction func didTapTextButton(_ sender: Any) {
    if (textField.text == ""){
      textLabel.text = "Hello from Gregg";
    } else {
      textLabel.text = textField.text;
    }
    textField.text = "";
    view.endEditing(true);
  }
  
  @IBAction func onResetGesture(_ sender: Any) {
    textLabel.text = "Hello from Gregg";
    view.backgroundColor = backgroundColor;
    textLabel.textColor = UIColor.black;
  }
}
