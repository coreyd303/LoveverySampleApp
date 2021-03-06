//
//  StubUser.swift
//  CoordinatorSampleAppTests
//
//  Created by Corey Davis on 6/17/20.
//  Copyright © 2020 Corey Davis. All rights reserved.
//

import Foundation

@testable import CoordinatorSampleApp

extension User {
    static func stub(name: String = "") -> User {
        return User(name: name)
    }
}
