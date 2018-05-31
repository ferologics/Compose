//
//  Navigator.swift
//  Composable Example
//

import Foundation

typealias PresentClosure = (Composable, [AnyHashable:Any]) -> Void
typealias PushClosure    = (Composable, [AnyHashable:Any]) -> Void
typealias PopClosure     = () -> Void
typealias PopAllClosure  = () -> Void

enum NavigationType {
  case present
  case push
  case pop
  case popAll
}

class Navigator {
  let present: PresentClosure
  let push:    PushClosure
  let pop:     PopClosure
  let popAll:  PopAllClosure
  
  init(presentClosure: @escaping PresentClosure,
       pushClosure:    @escaping PushClosure,
       popClosure:     @escaping PopClosure,
       popAllClosure:  @escaping PopAllClosure) {
    
    self.present = presentClosure
    self.push    = pushClosure
    self.pop     = popClosure
    self.popAll  = popAllClosure
  }
}

extension Navigator: Navigatable {
  func navigate(to destination: Component, navigationType: NavigationType, properties: [AnyHashable : Any]) {
    switch navigationType {
    case .present: self.present(destination.controller, properties)
    case .push:    self.push(destination.controller, properties)
    case .pop:     self.pop()
    case .popAll:  self.popAll()
    }
  }
}
