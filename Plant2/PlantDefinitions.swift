//
//  PlantsPreviews.swift
//  Growacle
//
//  Created by Cristian Matache on 11/10/23.
//

import SwiftUI

// Begin Plant Attributes

let Plant1Attributes = [1, 1, 3, 1, 1]
let Plant2Attributes = [1, 1, 1, 3, 5]
let Plant3Attributes = [2, 3, 2, 2, 1]
let Plant4Attributes = [2, 1, 2, 1, 1]
let Plant5Attributes = [2, 1, 2, 1, 4]
let Plant6Attributes = [1, 3, 2, 2, 5]
let Plant7Attributes = [1, 3, 1, 2, 2] // Demo plant
let Plant8Attributes = [1, 3, 1, 2, 2] // Demo plant
let Plant9Attributes = [2, 3, 1, 3, 3]

// End Plant Attributs

// Bunny ear cactus (1)
struct Plant1Preview: View {
    var body: some View {
        Text("Bunny Ear Cactus")
        NavigationLink(destination: SelectionConfirmation(selectedPlant: 1).toolbar(.hidden)) {
            ZStack {
                RoundedRectangle(cornerRadius:15)
                    .foregroundStyle(.green)
                    .frame(width: 340, height: 70)
                Text("This is the one!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
            }
        }
    }
}
// Orchid (2)
struct Plant2Preview: View {
    var body: some View {
        Text("Orchid")
        NavigationLink(destination: SelectionConfirmation(selectedPlant: 2).toolbar(.hidden)) {
            ZStack {
                RoundedRectangle(cornerRadius:15)
                    .foregroundStyle(.green)
                    .frame(width: 340, height: 70)
                Text("This is the one!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
            }
        }
    }
}

// Areca Palm Plant (3)
struct Plant3Preview: View {
    var body: some View {
        Text("Areca Palm Plant")
        NavigationLink(destination: SelectionConfirmation(selectedPlant: 3).toolbar(.hidden)) {
            ZStack {
                RoundedRectangle(cornerRadius:15)
                    .foregroundStyle(.green)
                    .frame(width: 340, height: 70)
                Text("This is the one!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
            }
        }
    }
}

// Snake plant (4)
struct Plant4Preview: View {
    var body: some View {
        Text("Snake plant")
        NavigationLink(destination: SelectionConfirmation(selectedPlant: 4).toolbar(.hidden)) {
            ZStack {
                RoundedRectangle(cornerRadius:15)
                    .foregroundStyle(.green)
                    .frame(width: 340, height: 70)
                Text("This is the one!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
            }
        }
    }
}

// Aloe Vera (5)
struct Plant5Preview: View {
    var body: some View {
        Text("Aloe Vera")
        NavigationLink(destination: SelectionConfirmation(selectedPlant: 5).toolbar(.hidden)) {
            ZStack {
                RoundedRectangle(cornerRadius:15)
                    .foregroundStyle(.green)
                    .frame(width: 340, height: 70)
                Text("This is the one!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
            }
        }
    }
}

// Laceleaf (6)
struct Plant6Preview: View {
    var body: some View {
        Text("Laceleaf")
        NavigationLink(destination: SelectionConfirmation(selectedPlant: 6).toolbar(.hidden)) {
            ZStack {
                RoundedRectangle(cornerRadius:15)
                    .foregroundStyle(.green)
                    .frame(width: 340, height: 70)
                Text("This is the one!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
            }
        }
    }
}

struct Plant7PreviewInfo: View {
    var body: some View {
        CircleImage(image: Image("Plant7PreviewThumb").resizable())
            .frame(width: 320, height: 300)
            .padding()
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 340, height: 80)
                .foregroundStyle(Color(.deepGray))
            VStack {
                Text("Basil")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                Text("ocimum basilicum")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .italic()
                    .padding(.bottom, 3)
            }
        }.padding(.bottom, 20)
    }
}

// Basil (7)
struct Plant7Preview: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            Plant7PreviewInfo()
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 150)
                    .foregroundStyle(Color(.deepGray))
                VStack {
                    Text("Description")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 150)
                        .padding(.bottom, 0.1)
                    Text("Basil is an annual herb of the mint family, grown for its aromatic leaves. Basil is likely native to India and is widely grown as a kitchen herb")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                        .frame(width: 310)
                        .padding(.trailing, -3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
            }.padding(.bottom, 20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 60)
                    .foregroundStyle(Color(.deepGray))
                Text("Images")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }.padding(.bottom, 20)
            
            Image("Plant7Preview1")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            Image("Plant7Preview2")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            Image("Plant7Preview3")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            NavigationLink(destination: SelectionConfirmation(selectedPlant: 7).toolbar(.hidden)) {
                ZStack {
                    RoundedRectangle(cornerRadius:15)
                        .foregroundStyle(.green)
                        .frame(width: 340, height: 70)
                    Text("This is the one!")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

struct Plant8PreviewInfo: View {
    var body: some View {
        CircleImage(image: Image("Plant8PreviewThumb").resizable())
            .frame(width: 320, height: 300)
            .padding()
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .frame(width: 340, height: 80)
                .foregroundStyle(Color(.deepGray))
            VStack {
                Text("Rosemary")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
                Text("salvia rosmarinus")
                    .font(.subheadline)
                    .fontWeight(.light)
                    .italic()
                    .padding(.bottom, 3)
            }
        }.padding(.bottom, 20)
    }
}
// Rosemary (8)
struct Plant8Preview: View {
    var body: some View {
        Plant8PreviewInfo()
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 135)
                    .foregroundStyle(Color(.deepGray))
                VStack {
                    Text("Description")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 150)
                        .padding(.bottom, 0.1)
                    Text("Rosemary is a fragrant, evergreen shrub with needle-like leaves and two-lipped, purplish-blue and white flowers.")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                        .frame(width: 310)
                        .padding(.trailing, -3)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                }
            }.padding(.bottom, 20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 60)
                    .foregroundStyle(Color(.deepGray))
                Text("Images")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }.padding(.bottom, 20)
            
            Image("Plant8Preview1")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            Image("Plant8Preview2")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            Image("Plant8Preview3")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            NavigationLink(destination: SelectionConfirmation(selectedPlant: 8).toolbar(.hidden)) {
                ZStack {
                    RoundedRectangle(cornerRadius:15)
                        .foregroundStyle(.green)
                        .frame(width: 340, height: 70)
                    Text("This is the one!")
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
            }
        }
    }
}

// Cherry Tomatoes (9)
struct Plant9Preview: View {
    var body: some View {
        Text("Cherry Tomatoes")
        NavigationLink(destination: SelectionConfirmation(selectedPlant: 9).toolbar(.hidden)) {
            ZStack {
                RoundedRectangle(cornerRadius:15)
                    .foregroundStyle(.green)
                    .frame(width: 340, height: 70)
                Text("This is the one!")
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundStyle(.white)
            }
        }
    }
}

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    Plant7Preview()
}
