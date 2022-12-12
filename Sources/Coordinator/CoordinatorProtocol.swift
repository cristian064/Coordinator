//
//  File.swift
//  
//
//  Created by Cristian Ayala on 12/12/22.
//

import Foundation

public protocol CoordinatorProtocol: AnyObject {
    var children: [CoordinatorProtocol] {get set}
    var router: Router { get set }
    func start()
}
