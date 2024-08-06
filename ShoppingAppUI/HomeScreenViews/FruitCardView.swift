//
//  FruitCardView.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-05.
//

import SwiftUI

let images: FruitModel = FruitModel(id: 1, title: .orange, image: "apple", price: "$3.44", color: "1")
struct FruitCardView: View {
    let fruits: FruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.title3)
                    .foregroundStyle(.black)
                Text(fruits.price)
                    .font(.title3)
                    .foregroundStyle(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175,height: 150,alignment: .center)
            .background(Color(fruits.color))
            .clipShape(RoundedRectangle(cornerRadius: 30))
            .padding()
            Image(fruits.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150,height: 110)
                .offset(y: 60)
        }
        .frame(width: 175, height: 250,alignment: .center)
        .shadow(color: .gray, radius: 5,x: 5,y: 5)
    }
}

#Preview {
    FruitCardView(fruits:images)
}
