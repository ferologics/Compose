//
//  NavigationDirector.swift
//  Composable Example
//

import Foundation

class NavigationDirector {
  let delegate: Navigatable
  
  init(delegate: Navigatable) {
    self.delegate = delegate
  }
  
  func direct(_ action: NavigationAction) {
    self.delegate.navigate(to: action.destination, navigationType: action.type, properties: action.properties)
  }
}
