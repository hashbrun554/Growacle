//
//  MainNavigation.swift
//  Plant2
//
//  Created by Cristian Matache on 11/9/23.
//

import SwiftUI
import SwiftData
import Foundation

@main
struct Plant2App: App {
    var body: some Scene {
        WindowGroup {
            // Dev testing
            DebugView()
        }
    }
}

extension Color {
    static var darkerGray = Color("DeepGray")
}

struct ContentView: View {
    var body: some View {
        DebugView()
    }
}

struct DebugView: View {
    @State private var showInformationAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Developer Pre-Alpha R1")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.blue)
                    .padding(.bottom, 5)
                Text("App Title: Growacle")
                    .font(.headline)
                    .padding(.bottom, 50)
                NavigationLink(destination: PreWizardIntro()) {
                    Text("OOBE")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
                Spacer()
                VStack {
                    Button("ⓘ") {
                        showInformationAlert = true
                        }
                        .alert(isPresented: $showInformationAlert) {
                            Alert(
                                title: Text("App Information"),
                                message: Text("Revision 1. Copyright of no one. MS SEF 2023."),
                                dismissButton: .default(Text("Close"))
                                )
                    }
                }
            }
        }
    }
}

struct PostWizardLoadingScreen: View {
    var body: some View {
        Text("Working on it...")
        ProgressView()
        Text("Your ideal plant(s) will come soon!")
    }
}

#Preview {
    ContentView()
}
