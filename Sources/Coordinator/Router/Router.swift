//
//  File.swift
//  
//
//  Created by Cristian Ayala on 12/12/22.
//

import UIKit

public final class Router {
    private let navigationController: UINavigationController
//    private let routerRootController: UIViewController?
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
//        self.routerRootController = navigationController.viewControllers.first
    }
}

extension Router: RouterProtocol {
    public func present(_ viewControllerToPresent: UIViewController, animated flag: Bool, completion: (() -> Void)?) {
        navigationController.present(viewControllerToPresent, animated: flag, completion: completion)
    }
    public func dismiss(animated flag: Bool, completion: (() -> Void)?) {
        navigationController.dismiss(animated: flag, completion: completion)
    }
    public func pushViewController(_ viewController: UIViewController, animated: Bool) {
        navigationController.pushViewController(viewController, animated: animated)
    }
    public func popViewController(animated: Bool) -> UIViewController? {
        navigationController.popViewController(animated: animated)
    }
    public func popToViewController(_ viewController: UIViewController, animated: Bool) -> [UIViewController]? {
        navigationController.popToViewController(viewController, animated: animated)
    }
    public func popToRootViewController(animated: Bool) -> [UIViewController]? {
        navigationController.popToRootViewController(animated: animated)
    }
}
