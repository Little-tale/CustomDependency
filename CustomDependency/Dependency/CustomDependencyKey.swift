//
//  CustomDependencyKey.swift
//  CustomDependency
//
//  Created by Jae hyung Kim on 11/6/24.
//

import Foundation

/*
 TCA 를 해보신 분들은 아실 부분이죠.
 Key 를 정의하는 인터페이스 입니다.
 */
protocol CustomDependencyKey {
    associatedtype Value
    static var defaultValue: Value { get }
}
