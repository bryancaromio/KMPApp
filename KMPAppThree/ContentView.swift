//
//  ContentView.swift
//  KMPAppThree
//
//  Created by Bryan Caro on 10/1/24.
//

import SwiftUI
import KMPResources
//import KMPCore
//import KMPResources

#if DEV
import KmpSharedDev
#else
import KmpShared
#endif

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")

                .onTapGesture {
//                    sayHelloFrom()
                    let info = Greeting().greet()
                    var env: String
#if DEV
      env = "This is a Development Environment"
#elseif TEST
      env = "This is a Test Environment"
#else
      env = "This is a Production Environment"
#endif

                    print(env, "--", info)
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
