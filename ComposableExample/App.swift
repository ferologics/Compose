//
//  App.swift
//  Composable Example
//

import Foundation
import UIKit.UIApplication

class App {
  let main: Main!
  let director: NavigationDirector!
  let navigator: Navigator!
  
  init() {
    self.main = Main.initMain()
    self.navigator = self.main.initNavigator()
    self.director = NavigationDirector.init(delegate: self.navigator)
  }
}
