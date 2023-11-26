//
//  MainNavigation.swift
//  Plant2
//
//  Created by Cristian Matache on 11/9/23.
//

import SwiftUI

struct PostWizardLoadingScreen: View {
    @State private var isNavigationActive = false
    @State var applicablePlants: [String: String] = [:]
    var body: some View {
        NavigationStack {
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
                        compareResults()
                        setApplicablePlants(applicablePlants: $applicablePlants)
                        DispatchQueue.main.asyncAfter(deadline: .now() + Double.random(in: 3...6)) {
                            withAnimation {
                                isNavigationActive = true
                            }
                        }
                    }
                    .background(
                        Button(action: {
                            isNavigationActive = true
                        }, label: {
                            EmptyView()
                        })
                        .navigationDestination(isPresented: $isNavigationActive) {
                            ResultsView(applicablePlants: $applicablePlants).toolbar(.hidden)
                        }
                    )
            }
        }
    }
}

func setApplicablePlants(applicablePlants: Binding<[String: String]>) {
    if Plant1Applicable {
        applicablePlants.wrappedValue["Plant1Preview"] = "Bunny Ears Cactus"
    }

    if Plant2Applicable {
        applicablePlants.wrappedValue["Plant2Preview"] = "Moth Orchid"
    }

    if Plant3Applicable {
        applicablePlants.wrappedValue["Plant3Preview"] = "Areca Palm Plant"
    }

    if Plant4Applicable {
        applicablePlants.wrappedValue["Plant4Preview"] = "Snake Plant"
    }

    if Plant5Applicable {
        applicablePlants.wrappedValue["Plant5Preview"] = "Aloe Vera"
    }

    if Plant6Applicable {
        applicablePlants.wrappedValue["Plant6Preview"] = "Laceleaf"
    }

    if Plant7Applicable {
        applicablePlants.wrappedValue["Plant7Preview"] = "Basil"
    }

    if Plant8Applicable {
        applicablePlants.wrappedValue["Plant8Preview"] = "Rosemary"
    }

    if Plant9Applicable {
        applicablePlants.wrappedValue["Plant9Preview"] = "Cherry Tomato"
    }
}

struct ResultsListElement: View {
    var plantName: String
    var plantKey: String

    var body: some View {
        NavigationLink(destination: destinationView) {
            HStack {
                Image("\(plantKey)Thumb")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.trailing, 8)
                
                Text(plantName)
            }
            .padding(8)
        }
    }

    @ViewBuilder
    var destinationView: some View {
        switch plantKey {
        case "Plant1Preview":
            AnyView(Plant1Preview())
            
        case "Plant2Preview":
            AnyView(Plant2Preview())
            
        case "Plant3Preview":
            AnyView(Plant3Preview())
            
        case "Plant4Preview":
            AnyView(Plant4Preview())
            
        case "Plant5Preview":
            AnyView(Plant5Preview())
            
        case "Plant6Preview":
            AnyView(Plant6Preview())
            
        case "Plant7Preview":
            AnyView(Plant7Preview())
            
        case "Plant8Preview":
            AnyView(Plant8Preview())
            
        case "Plant9Preview":
            AnyView(Plant9Preview())
            
        default:
            AnyView(EmptyView())
        }
    }
}

struct ResultsView: View {
    @Binding var applicablePlants: [String: String]
    
    var body: some View {
        NavigationView {
            VStack {
                if (applicablePlants == [:]) {
                    Text("Womp, womp...")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.yellow)
                        .multilineTextAlignment(.center)
                        .padding(.top, 50)
                        .padding(.bottom, 20)
                    Text("Sorry, but your selections did not yield any applicable plants! Consider retaking the wizard to get more accurate results.")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                    Spacer()
                } else {
                    Text("The results are in!")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.green)
                        .multilineTextAlignment(.center)
                        .padding(.top, 40)
                        .padding(.bottom, 20)
                    
                    Text("If the plants below don't sound right for you, the quiz can always be taken again!")
                        .font(.headline)
                        .multilineTextAlignment(.center)
                        .frame(width: 300)
                        .padding(.bottom, 20)
                    
                    List(applicablePlants.sorted(by: { $0.value < $1.value }), id: \.key) { key, value in
                        ResultsListElement(plantName: value, plantKey: key)
                    }
                }
                NavigationLink(destination: WizardIntro()
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(false)) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(Color(.deepGray))
                            .frame(width: 300,height: 50)
                        Text("Restart Wizard")
                            .fontWeight(.heavy)
                            .foregroundStyle(.white)
                            .font(.title3)
                    }
                }.simultaneousGesture(TapGesture().onEnded{
                    userSelections = [0,0,0,0,0]
                    applicablePlants = [:]
                    Plant1Applicable = false
                    Plant2Applicable = false
                    Plant3Applicable = false
                    Plant4Applicable = false
                    Plant5Applicable = false
                    Plant6Applicable = false
                    Plant7Applicable = false
                    Plant8Applicable = false
                    Plant9Applicable = false
                    WizardFailure = false
                })
                
                Image("PlantBorder")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, -40)
                    .padding(.top, 20)
            }
        }
    }
}

struct SelectionConfirmation: View {
    var selectedPlant: Int
    var navigateToMainMenu = false
    var body: some View {
        Text("Hooray!")
            .font(.system(size: 50))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.green)
            .padding(.bottom, -20)
        
        Image("PlantConfirmationImage")
            .resizable()
            .frame(width: 200, height: 200)
        
        Text("Welcome to your new growing\njourney!")
            .font(.system(size: 20))
            .multilineTextAlignment(.center)
            .padding(.bottom, 30)
        NavigationLink(destination: MainMenu()
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(false)) {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(.green)
                    .frame(width: 340,height: 50)
                Text("Continue to Main Menu")
                    .fontWeight(.heavy)
                    .foregroundStyle(.white)
                    .font(.title3)
            }
        }
    }
}

#Preview {
    SelectionConfirmation(selectedPlant: 7)
}
