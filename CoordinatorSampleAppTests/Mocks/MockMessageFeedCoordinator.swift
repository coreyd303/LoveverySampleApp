//
//  MockMessageFeedCoordinator.swift
//  CoordinatorSampleAppTests
//
//  Created by Corey Davis on 6/17/20.
//  Copyright © 2020 Corey Davis. All rights reserved.
//

import Foundation

@testable import CoordinatorSampleApp

class MockMessageFeedCoordinator: MessageFeedCoordinator {
    var invokedDidFinishSetter = false
    var invokedDidFinishSetterCount = 0
    var invokedDidFinish: (() -> ())?
    var invokedDidFinishList = [(() -> ())?]()
    var invokedDidFinishGetter = false
    var invokedDidFinishGetterCount = 0
    var stubbedDidFinish: (() -> ())!
    var didFinish: (() -> ())? {
        set {
            invokedDidFinishSetter = true
            invokedDidFinishSetterCount += 1
            invokedDidFinish = newValue
            invokedDidFinishList.append(newValue)
        }
        get {
            invokedDidFinishGetter = true
            invokedDidFinishGetterCount += 1
            return stubbedDidFinish
        }
    }
    var invokedStart = false
    var invokedStartCount = 0
    func start() {
        invokedStart = true
        invokedStartCount += 1
    }
}
