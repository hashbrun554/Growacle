//
//  MainNavigation.swift
//  Growacle
//
//  Created by Cristian Matache on 11/21/23.
//

import SwiftUI
import URLImage
import UserNotifications

extension Color {
    static var darkerGray = Color("DeepGray")
    static var SwiftUILightGrey = Color("LighterGray")
}



struct MainMenu: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
                .tag(0)
            
            ResourcesView()
                .tabItem {
                    Label("Resources", systemImage: "star")
                }
                .tag(1)
            
            SettingsView()
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                .tag(2)
        }
    }
}

struct HomeView: View {
    @State private var presentCheckInView = false
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Plant7PreviewInfo()
                    LevelView().padding(.bottom, 20)
                    StatsView().padding(.bottom, 20)
                    
                    NavigationLink(destination: CheckInView()) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 15)
                                .frame(width: 340, height: 70)
                                .foregroundStyle(.green)
                            Text("Check In!")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                                .foregroundStyle(.white)
                        }
                    }.padding(.bottom, 30)
                }
            }
        }
    }
}

struct CheckInView: View {
    var body: some View {
        Text("Nice to see you!")
            .font(.system(size: 40))
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .foregroundStyle(.green)
            .padding(.bottom, 15)
        
        Text("What type of check-in will you be doing today?")
            .font(.system(size: 20))
            .fontWeight(.medium)
            .multilineTextAlignment(.center)
            .frame(width: 280)
            .padding(.bottom, 20)
        
        NavigationLink(destination: RegularCheckIn(masteryLevel: .constant(0))) {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 60)
                    .foregroundStyle(.orange)
                Text("Regular Check In")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }.padding(.bottom, 10)
        
        NavigationLink(destination: EmptyView()) {
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 60)
                    .foregroundStyle(.blue)
                Text("Early Check In")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
            }
        }.padding(.bottom, 30)
        
        Text("If you recieved a notification telling you to take care of your plant before this check-in, you should do a regular check-in. If you haven't been notified to take care of your plant yet, you can select the early check-in option, which will give you more mastery points to reward your habit-building skills!")
            .font(.subheadline)
            .foregroundStyle(.gray)
            .multilineTextAlignment(.center)
            .frame(width: 340)
        
    }
}

struct RegularCheckIn: View {
    @Binding var masteryLevel: CGFloat
    
    var body: some View {
        VStack {
            Text("Good job!")
                .font(.system(size: 50))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.green)
            
            Image("PlantThumbsUp")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
                .padding(.top, -40)
                .padding(.bottom, -20)
            
            Text("We hope that growing your plant has been a breeze so far!")
                .font(.system(size: 25))
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                
        }.onAppear {
            masteryLevel += 0.5
        }
    }
}

struct LevelView: View {
    @State var masteryLevel = 0.0
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 340, height: 125)
                .foregroundStyle(Color(.deepGray))
            VStack {
                HStack {
                    Text("Level 1 ⭐️")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading, 42)
                        .padding(.top, 15)
                    Spacer()
                }
                ProgressView(value: masteryLevel)
                    .frame(width: 310)
                    .padding(.top, -10)
                
                HStack {
                    Text("0/10 Mastery Points")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .padding(.leading, 42)
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct StatsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 340, height: 200)
                .foregroundStyle(Color(.deepGray))
            VStack {
                HStack {
                    Text("Statistics")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 42)
                        .padding(.top, 12)
                        .padding(.bottom, 1)
                    Spacer()
                }
                HStack {
                    Text("**Plant taken care of for:** 1 day")
                        .font(.title3)
                        .padding(.leading, 42)
                        .padding(.bottom, 1)
                    Spacer()
                }
                HStack {
                    Text("**Planting date:** 11/29/2023")
                        .font(.title3)
                        .padding(.leading, 42)
                        .padding(.bottom, 1)
                    Spacer()
                }
                HStack {
                    Text("**Total check-ins:** 0")
                        .font(.title3)
                        .padding(.leading, 42)
                        .padding(.bottom, 1)
                    Spacer()
                }
                HStack {
                    Text("**Total Mastery Points:** 0")
                        .font(.title3)
                        .padding(.leading, 42)
                        .padding(.bottom, 1)
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

struct ResourcesView: View {
    @Environment(\.openURL) var openURL
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Text("Care Resources")
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundStyle(.green)
                        .padding(.leading, 20)
                    Spacer()
                }.padding(.bottom, 2)
                
                HStack {
                    Text("How to Grow Your Plant")
                        .font(.system(size: 27))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 20)
                    Spacer()
                }
                // non constant button
                Button {
                    openURL(URL(string: "https://www.thespruce.com/how-to-grow-basil-plants-1402624")!)
                } label: {
                    LinkPreviewView(
                        photoURL: URL(string: "https://www.thespruce.com/thmb/_H3tIOm1tqotyBZLfu0HNBF7iKQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-grow-basil-plants-1402624-07-6071d2544ef2423a99d2e30a153c2b00.jpg")!,
                        websiteTitle: "How to Grow Basil",
                        websiteAuthor: "Marie Iannotti",
                        itemHeight: 325)
                }.padding(.bottom, 40)
                
                HStack {
                    Text("Useful Growing Resources")
                        .font(.system(size: 27))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 20)
                    
                    Spacer()
                }
                
                Button {
                    openURL(URL(string: "https://bioadvanced.com/tips-healthy-houseplants")!)
                } label: {
                    LinkPreviewView(
                        photoURL: URL(string: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1000w,f_auto,q_auto:best/newscms/2019_44/3075126/191029-better-taking-care-house-plants-se-530p.jpg")!,
                        websiteTitle: "How to keep your indoor plants alive",
                        websiteAuthor: "Brianna Steinhilber",
                        itemHeight: 390)
                }.padding(.bottom, 40)
                
                Button {
                    openURL(URL(string: "https://homesteadgardens.com/what-type-of-pot-should-i-put-my-houseplant-in/")!)
                } label: {
                    LinkPreviewView(
                        photoURL: URL(string: "https://homesteadgardens.com/wp-content/uploads/houseplant-pots-1.jpg")!,
                        websiteTitle: "What Type of Pot Should\nI Put My Houseplant In?",
                        websiteAuthor: "Homestead Gardens",
                        itemHeight: 295)
                }.padding(.bottom, 40)
                
                Button {
                    openURL(URL(string: "https://www.masterclass.com/articles/how-to-care-for-indoor-plants")!)
                } label: {
                    LinkPreviewView(
                        photoURL: URL(string: "https://www.thespruce.com/thmb/_H3tIOm1tqotyBZLfu0HNBF7iKQ=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/how-to-grow-basil-plants-1402624-07-6071d2544ef2423a99d2e30a153c2b00.jpg")!,
                        websiteTitle: "How to Grow Plants Indoors: 6 Tips for Growing Houseplants",
                        websiteAuthor: "MasterClass",
                        itemHeight: 395)
                }.padding(.bottom, 40)
            }
        }
    }
}

struct SettingsView: View {
    var body: some View {
        Text("Settings")
    }
}

struct LinkPreviewView: View {
    var photoURL: URL
    var websiteTitle: String
    var websiteAuthor: String
    var itemHeight: CGFloat
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 350, height: itemHeight)
                .foregroundStyle(Color(.deepGray))
            VStack {
                URLImage(photoURL) { image in image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350)
                }.clipShape(UnevenRoundedRectangle(cornerRadii: .init(topLeading: 25, topTrailing: 25)))
                HStack {
                    Text(websiteTitle)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.leading, 35)
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.leading)
                    Spacer()
                }.padding(.bottom, 0.5)
                
                HStack {
                    Text("By \(websiteAuthor)")
                        .font(.title3)
                        .padding(.leading, 35)
                        .foregroundStyle(Color(.lighterGray))
                    Spacer()
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    MainMenu()
}

