//
//  MainNavigation.swift
//  Plant2
//
//  Created by Cristian Matache on 11/9/23.
//

import SwiftUI
import SwiftData

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
    @State private var isNavigationActive = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Working on it...")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                    .padding(.bottom, 20)

                ProgressView()
                    .controlSize(.large)

                Text("Your ideal plant(s) will come soon!")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.top, 30)
                    .onAppear {
                        // Trigger the delay when PostWizardLoadingScreen appears
                        // Also run comparison code
                        
                        compareResults()
                        
                        /* test code
                        print("function ran.")
                        print(String(Plant7Applicable))
                         */
                        
                        DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 3...6)) {
                            withAnimation {
                                isNavigationActive = true
                            }
                        }
                    }
                    .background(
                        NavigationLink(
                            destination: ResultsView().toolbar(.hidden),
                            isActive: $isNavigationActive
                        ) {
                            EmptyView()
                        }
                        .hidden()
                    )
            }
        }
    }
}

struct ResultsView: View {
    var body: some View {
        VStack {
            Text("Results:")
            
            // Test with [1, 3, 1, 2, 2]
            
            
            if (Plant1Applicable) {
                Text("1")
            }
            if (Plant2Applicable) {
                Text("2")
            }
            if (Plant3Applicable) {
                Text("3")
            }
            if (Plant4Applicable) {
                Text("4")
            }
            if (Plant5Applicable) {
                Text("5")
            }
            if (Plant6Applicable) {
                Text("6")
            }
            if (Plant7Applicable) {
                Text("7")
            }
            if (Plant8Applicable) {
                Text("8")
            }
            if (Plant9Applicable) {
                Text("9")
            }
        }
    }
}


#Preview {
    ContentView()
}
