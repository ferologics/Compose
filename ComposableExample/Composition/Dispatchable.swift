//
//  Dispatchable.swift
//  Composable Example
//

import Foundation
import UIKit.UIApplication

protocol Dispatchable {
  func dispatch(_ action: NavigationAction)
}

extension Dispatchable {
  func dispatch(_ action: NavigationAction) {
    DispatchQueue.main.async {
      (UIApplication.shared.delegate as! AppDelegate).app.director.direct(action)
    }
  }
}
