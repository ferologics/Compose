//
//  Component.swift
//  Composable Example
//

import Foundation
import UIKit.UIStoryboard

typealias StoryBoard = UIStoryboard

public enum Component: String {
  case Main
  case Count

  var controller: Composable {
    return StoryBoard.init(name: self.rawValue, bundle: nil).instantiateInitialViewController() as! Composable
  }
}
