//
//  ContentView.swift
//  CustomDependency
//
//  Created by Jae hyung Kim on 11/6/24.
//

import SwiftUI

struct ContentView: View {
    
    @CustomDependency(\.TEST_STRUCT) var test
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Button {
                test.testPrint()
            } label: {
                Text("Hello, world!")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
