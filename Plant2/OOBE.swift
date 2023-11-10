//
//  ContentView.swift
//  Plant2
//
//  Created by Cristian Matache on 10/15/23.
//

import SwiftUI

struct PreWizardIntro: View {
    var body: some View {
        //NavigationView {
            VStack {
                Spacer()
                Text("Welcome to Growacle")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundStyle(.green)
                    .padding(.bottom, 30)
                
                Image("PlantIntroIcon") // Image fixed
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(.bottom, 50)
                    
                Text("Insert description.")
                    .font(.headline)
                    
                    .fontWeight(.medium)
                    .multilineTextAlignment(.center)
                    .frame(width: 300)
                    .padding(.bottom, 20)
                    
                NavigationLink(destination: WizardIntro()) {
                    ZStack {
                        RoundedRectangle(cornerRadius: 15)
                            .foregroundStyle(.green)
                            .frame(width: 300,height: 50)
                        Text("Let's Go!")
                            .fontWeight(.heavy)
                            .foregroundStyle(.white)
                            .font(.title3)
                    }
                }
                
                Spacer()
                
                Image("PlantBorder")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, -40)
            //}
        }
    }
}


struct WizardIntro: View {
    var body: some View {
        VStack {
            Spacer()
            Text("The Wizard 🪄")
                .padding(.top, 50)
                .font(.system(size: 50))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .foregroundStyle(.green)
            
            Text("To choose a plant you will be able to comfortably grow, we will take you through the selection wizard. The wizard will ask questions such as how big your house or garden is, or how often you'd like to take care of your plant.")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 300)
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
            
            NavigationLink(destination: FirstOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.green)
                        .frame(width: 300,height: 50)
                    Text("Get Started")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            Spacer()
            
            Image("PlantBorder")
                .resizable()
                .scaledToFit()
                .padding(.bottom, -100)
            Spacer()
            
        }
    }
}

struct FirstOOBEPrompt: View {
    var body: some View {
        // This view will ask indoors/outdoors
        VStack {
            Text("Where will it go?")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .foregroundStyle(.green)
                .padding(.top, 60)
            
            Text("Where would you like to grow your plant?")
                .font(.system(size: 20))
                .frame(width: 300, height: 75)
                .multilineTextAlignment(.center)
                .padding(.top, -25)
            Spacer()
            
            // Indoors
            NavigationLink(destination: SecondOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    
                    HStack {
                        Image("Indoors")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .padding(.bottom, 5)
                        
                        Text("Indoors")
                            .fontWeight(.heavy)
                            .foregroundStyle(.white)
                            .font(.title3)
                    }
                }
            }
            
            // Outdoors
            NavigationLink(destination: SecondOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    HStack {
                        Image("Outdoors")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding(.bottom, 5)
                            .padding(.trailing, -7)
                        Text("Outdoors")
                            .fontWeight(.heavy)
                            .foregroundStyle(.white)
                            .font(.title3)
                    }
                }
            }
            
            Spacer()
                .frame(height: 80)
            
            Text("Take into consideration the amount of space in your home or garden. The plants we selected are relatively small in size, but you may feel more comfortable keeping it inside or outside of your home in some circumstances.")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .frame(width: 300)
            
            Image("PlantBorder")
                .resizable()
                .scaledToFit()
                .padding(.bottom, -40)
        }
    }
}

struct SecondOOBEPrompt: View {
    var body: some View {
        // Climate Prompt
        /*
         
         What climate does your area have?
            Tropical (64 to 95 degrees)
            Dry (-6 to 127)
            Temperate (-5 to 95
            Continental (-22 to 85)
            Polar (-60 to 0)

         
        */
        VStack {
            Text("What's the weather like ⛈️")
                .font(.system(size: 28))
                .fontWeight(.bold)
                .foregroundStyle(.green)
                .padding(.bottom, 30)
                .padding(.top, 30)
            
            Text("The climate of the area you live in is important to determining what plants you can actually grow.")
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.bottom, 40)
            
            
            // Begin 5 climate buttons
            
            //Tropical
            NavigationLink(destination: ThirdOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.orange)
                        .frame(width: 300,height: 50)
                    Text("Tropical (64° to 95°)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            //Dry
            NavigationLink(destination: ThirdOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.yellow)
                        .frame(width: 300,height: 50)
                    Text("Dry (-6° to 127°)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            //Temperate
            NavigationLink(destination: ThirdOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.green)
                        .frame(width: 300,height: 50)
                    Text("Temperate (-5° to 95°)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            //Continental
            NavigationLink(destination: ThirdOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.cyan)
                        .frame(width: 300,height: 50)
                    Text("Continental (-22° to 85°)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            // Polar
            NavigationLink(destination: ThirdOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.blue)
                        .frame(width: 300,height: 50)
                    Text("Polar (-60° to 0°)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            Spacer()
            
            Text("All temepratures are in Fahrenheit. Visit [this website](https://scijinks.gov/climate-zones/) for more information on climate zones.")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .frame(width: 300)
                .tint(.green)
            
            Image("PlantBorder")
                .resizable()
                .scaledToFit()
                .padding(.bottom, -40)
        }
    }
}

struct ThirdOOBEPrompt: View {
    // Care frequency
    var body: some View {
        VStack {
            Text("Let's talk time.")
                .font(.system(size: 45))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.green)
                .padding(.bottom, 25)
                .padding(.top, 20)
            
            Text("How often would you like to take care of your plant?")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding(.bottom, 70)
            
            NavigationLink(destination: FourthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Frequently (2-3 days)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            NavigationLink(destination: FourthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Often (1-2 weeks)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            NavigationLink(destination: FourthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Seldom (1-2 months)")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            Spacer()
                .frame(height: 50)
            
            Text("A plant that requirews more time may not necessarily yield more benefits or be more aesthetic. Choose only what you feel comfortable with because it will make the experience more fun!")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .frame(width: 300)
            
            Spacer()
            
            Image("PlantBorder")
                .resizable()
                .scaledToFit()
                .padding(.bottom, -35)
        }
    }
}

struct FourthOOBEPrompt: View {
    // Care difficulty
    var body: some View {
        VStack {
            Text("The challenging part...")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.green)
                .padding(.bottom, 25)
                .padding(.top, 40)
            
            Text("What is the ideal care difficulty for your plant?")
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(.bottom, 50)
            
            NavigationLink(destination: FifthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Easy 💤")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            NavigationLink(destination: FifthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Medium 😅")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            NavigationLink(destination: FifthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Hard 🏋️")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            Spacer()
            
            Text("Similarly to the care frequency, the care difficulty of your plant may not correspond to its looks or benefits. The plants chosen by us are curated for beginners, but some may have more intense needs.")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .frame(width: 300)
            
            Spacer()
            
            Image("PlantBorder")
                .resizable()
                .scaledToFit()
                .padding(.bottom, -35)

        }
    }
}

struct FifthOOBEPrompt: View {
    // Care difficulty
    var body: some View {
        VStack {
            Text("Only pros; no cons here.")
                .font(.title)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.green)
                .padding(.bottom, 25)
                .padding(.top, 20)
            
            Text("Which of the following benefits sounds most appealing to you?")
                .font(.headline)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .padding(.bottom, 50)
            
            NavigationLink(destination: FifthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Purifies air naturally")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            NavigationLink(destination: FifthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Savory herb")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            NavigationLink(destination: FifthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Tasty fruit")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            NavigationLink(destination: FifthOOBEPrompt()) {
                ZStack {
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(Color.darkerGray)
                        .frame(width: 300,height: 50)
                    Text("Healing properties")
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)
                        .font(.title3)
                }
            }
            
            Spacer()
            
            Text("Most plants have some kind of benefit, so just pick whatever option sounds most interesting!")
                .font(.subheadline)
                .foregroundStyle(.gray)
                .frame(width: 300)
            
            Image("PlantBorder")
                .resizable()
                .scaledToFit()
                .padding(.bottom, -35)

            
        }
    }
}
