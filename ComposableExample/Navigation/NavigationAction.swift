//
//  NavigationAction.swift
//  Composable Example
//

import Foundation

struct NavigationAction {
  var destination: Component
  var properties: [AnyHashable : Any]
  var type: NavigationType
  
  init(destination: Component, type: NavigationType, properties: [AnyHashable:Any]) {
    self.destination = destination
    self.type = type
    self.properties = properties
  }
}
