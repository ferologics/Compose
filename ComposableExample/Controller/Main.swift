//
//  ViewController.swift
//  Composable Example
//

import Foundation
import UIKit.UINavigationController

class Main: UINavigationController {
  static func initMain() -> Main {
    let main = StoryBoard.init(name: Component.Main.rawValue, bundle: nil).instantiateInitialViewController() as! Main
    let initialComponent = Component.Count.controller
    initialComponent.properties = ["count":0]
    main.show(initialComponent, sender: nil)
    
    return main
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
  }
  
  func initNavigator() -> Navigator {
    let present: PresentClosure = { [unowned self] (viewController: Composable, properties: [AnyHashable:Any]?) in
      viewController.properties = properties
      self.present(viewController, animated: true, completion: nil)
    }
    
    let push: PushClosure = { [unowned self] (viewController: Composable, properties: [AnyHashable:Any]?) in
      viewController.properties = properties
      self.pushViewController(viewController, animated: true)
    }
    
    let pop: PopClosure = { [unowned self] in
      self.popViewController(animated: true)
    }
    
    let popAll: PopAllClosure = { [unowned self] in
      self.popToRootViewController(animated: true)
    }
    
    return Navigator.init(presentClosure: present, pushClosure: push, popClosure: pop, popAllClosure: popAll)
  }
}
