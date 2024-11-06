//
//  CustomDependency.swift
//  CustomDependency
//
//  Created by Jae hyung Kim on 11/6/24.
//

import Foundation

@propertyWrapper
struct CustomDependency<Value> {
    
    private let keyPath: KeyPath<CustomDependencyValues, Value>
    let initialValue: CustomDependencyValues
    
    init(_ keyPath: KeyPath<CustomDependencyValues, Value>) {
        self.initialValue = CustomDependencyValues._current
        self.keyPath = keyPath
    }
    
    var wrappedValue: Value {
        initialValue[keyPath: keyPath]
    }
}
