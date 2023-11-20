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
        ScrollView(showsIndicators: false) {
            CircleImage(image: Image("Plant1PreviewThumb").resizable())
                .frame(width: 320, height: 300)
                .padding()
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 80)
                    .foregroundStyle(Color(.deepGray))
                VStack {
                    Text("Bunny Ear Cactus")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.black)
                        .foregroundStyle(.white)
                    Text("opuntia microdasys")
                        .font(.subheadline)
                        .fontWeight(.light)
                        .italic()
                        .padding(.bottom, 3)
                }
            }.padding(.bottom, 20)
            
            ZStack {
                RoundedRectangle(cornerRadius: 15)
                    .frame(width: 340, height: 130)
                    .foregroundStyle(Color(.deepGray))
                VStack {
                    Text("Description")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding(.trailing, 145)
                        .padding(.bottom, 0.1)
                    Text("The Bunny ear cactus is a bushy, perennial cactus with oval to round, flattened, small pads.")
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundStyle(.white)
                        .frame(width: 310)
                        .padding(.trailing, 30)
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
            
            Image("NoImageAvailable")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            Image("NoImageAvailable")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
            Image("NoImageAvailable")
                .resizable()
                .frame(width: 340, height: 191)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .padding(.bottom, 20)
        }
    }
}

// Orchid (2)
struct Plant2Preview: View {
    var body: some View {
        Text("Orchid")
    }
}

// Areca Palm Plant (3)
struct Plant3Preview: View {
    var body: some View {
        Text("Areca Palm Plant")
    }
}

// Snake plant (4)
struct Plant4Preview: View {
    var body: some View {
        Text("Snake plant")
    }
}

// Aloe Vera (5)
struct Plant5Preview: View {
    var body: some View {
        Text("Aloe Vera")
    }
}

// Laceleaf (6)
struct Plant6Preview: View {
    var body: some View {
        Text("Laceleaf")
    }
}

// Basil (7)
struct Plant7Preview: View {
    var body: some View {
        Text("Basil")
    }
}

// Rosemary (8)
struct Plant8Preview: View {
    var body: some View {
        Text("Rosemary")
    }
}

// Cherry Tomatoes (9)
struct Plant9Preview: View {
    var body: some View {
        Text("Cherry Tomatoes")
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
    Plant1Preview()
}
