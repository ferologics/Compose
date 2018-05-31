//
//  Navigatable.swift
//  Composable Example
//

import Foundation

protocol Navigatable {
  func navigate(to destination: Component, navigationType: NavigationType, properties: [AnyHashable:Any])
}
