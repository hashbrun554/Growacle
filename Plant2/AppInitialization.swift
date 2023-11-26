//
//  AppInitialization.swift
//  Growacle
//
//  Created by Cristian Matache on 11/25/23.
//

import SwiftUI

@main
struct Plant2App: App {
    var body: some Scene {
        WindowGroup {
            // Dev testing
            DebugView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        // Create proper intialization function
        DebugView()
    }
}

struct DebugView: View {
    @State private var showInformationAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Preview Menu")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.blue)
                    .padding(.bottom, 5)
                Text("App Title: Growacle")
                    .font(.headline)
                    .padding(.bottom, 50)
                NavigationLink(destination: PreWizardIntro().navigationBarBackButtonHidden(true)
                    .navigationBarHidden(false)) {
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
