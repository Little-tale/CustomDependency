//
//  TestStruct.swift
//  CustomDependency
//
//  Created by Jae hyung Kim on 11/6/24.
//

import Foundation

struct TestStruct {
    let text = "Hello, World!"
}

extension TestStruct {
    func testPrint() {
        print(text)
    }
}

extension TestStruct: CustomDependencyKey {
    static let defaultValue: Self = Self()
}

extension CustomDependencyValues {
    var TEST_STRUCT: TestStruct {
        get { self[TestStruct.self] }
        set { self[TestStruct.self] = newValue }
    }
}
