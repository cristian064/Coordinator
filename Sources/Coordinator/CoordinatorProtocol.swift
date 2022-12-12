//
//  File.swift
//  
//
//  Created by Cristian Ayala on 12/12/22.
//

import Foundation
import UIKit

public protocol CoordinatorProtocol: AnyObject {
    var children: [CoordinatorProtocol] {get set}
    var router: Router { get set }
    func start()
    
    var finishFlow: (() -> Void)? {get set}
}

extension CoordinatorProtocol {
    
    public func removeChild(_ child: CoordinatorProtocol) {
        guard let index = children.firstIndex(where: { $0 === child }) else { return }
        children.remove(at: index)
    }
    
    public func appendChild(_ child: CoordinatorProtocol) {
        children.append(child)
        child.start()
    }
    
}
