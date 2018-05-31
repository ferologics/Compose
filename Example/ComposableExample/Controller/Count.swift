//
//  ViewController.swift
//  Composable Example
//

import UIKit

class Count: Composable {
  @IBOutlet weak var countLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    countLabel.text = String((properties!["count"] as! Int))
  }
  
  @IBAction func push(_ sender: Any) {
    navigate(navigationType: .push)
  }
  
  @IBAction func pop(_ sender: Any) {
    navigate(navigationType: .pop)
  }
  
  @IBAction func popAll(_ sender: Any) {
    navigate(navigationType: .popAll)
  }
  
  @IBAction func present(_ sender: Any) {
    navigate(navigationType: .present)
  }
  
  func navigate(navigationType: NavigationType) {
    var count = (properties!["count"] as! Int)
    switch navigationType {
    case .push:    count += 1
    case .pop:     count -= 1
    case .popAll:  count = 0
    case .present: print("present")
    }
    
    let navigationAction = NavigationAction.init(destination: .Count, type: navigationType, properties: ["count":count])
    dispatch(navigationAction)
  }
}
