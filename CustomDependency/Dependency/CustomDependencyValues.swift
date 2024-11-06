//
//  CustomDependencyValues.swift
//  CustomDependency
//
//  Created by Jae hyung Kim on 11/6/24.
//

import Foundation

struct CustomDependencyValues {
    
    private var storage: [ObjectIdentifier: Any] = [:]
    static var _current = Self()
    
    subscript<K: CustomDependencyKey>(key: K.Type) -> K.Value {
        get {
            storage[ObjectIdentifier(key)] as? K.Value ?? key.defaultValue
        }
        set {
            storage[ObjectIdentifier(key)] = newValue
        }
    }
}
