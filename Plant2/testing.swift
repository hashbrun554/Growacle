//
//  testing.swift
//  Growacle
//
//  Created by Cristian Matache on 11/24/23.
//

import SwiftUI

struct Testing: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            Testing1()
                .tabItem {
                    Label("", systemImage: "house")
                }
                .tag(0)
            
            Testing2()
                .tabItem {
                    Label("", systemImage: "gear")
                }
                .tag(1)
            
            Testing3()
                .tabItem {
                    Label("", systemImage: "star")
                }
                .tag(2)
        }
        .padding(.bottom, -60)
    }
}

struct Testing1: View {
    var body: some View {
        Text("View 1")
    }
}

struct Testing2: View {
    var body: some View {
        Text("View 2")
    }
}

struct Testing3: View {
    var body: some View {
        Text("View 3")
    }
}

#Preview {
    Testing()
}
