//
//  File.swift
//  
//
//  Created by Cristian Ayala on 12/12/22.
//

import UIKit

public protocol RouterProtocol: AnyObject {
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?)
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool)
    func dismiss(animated flag: Bool, completion: (() -> Void)?)
    func dismiss(animated flag: Bool)
    func pushViewController(_ viewController: UIViewController, animated: Bool)
    func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]?
    func popToRootViewController(animated: Bool) -> [UIViewController]?
    
}

public extension RouterProtocol {
    func present(_ viewControllerToPresent: UIViewController, animated flag: Bool) {
        present(viewControllerToPresent, animated: flag, completion: nil)
    }
    func dismiss(animated flag: Bool) {
        dismiss(animated: flag, completion: nil)
    }
}
