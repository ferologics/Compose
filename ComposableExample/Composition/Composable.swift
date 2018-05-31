//
//  Composable.swift
//  Composable Example
//

import UIKit.UIViewController

class Composable: UIViewController {
  var properties: [AnyHashable:Any]?
}

extension Composable: Dispatchable { }
