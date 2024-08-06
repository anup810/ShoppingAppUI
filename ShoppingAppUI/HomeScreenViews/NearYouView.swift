//
//  NearYouView.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-06.
//

import SwiftUI

struct NearYouView: View {
    let dataArray: [NearYouData] = [
        .init(id: 0, name: "Food 365 Valley", time: "9:00 - 10:00", rating: "★ 4.7 |📍 1.5 km", image: "1"),
        .init(id: 1, name: "Super Store", time: "8:00 - 10:00", rating: "★ 4.5 |📍 1.7 km", image: "2"),
        .init(id: 2, name: "Organic Farm", time: "6:00 - 11:00", rating: "★ 4.9 |📍 2.0 km", image: "3"),
        .init(id: 3, name: "Big Basket", time: "9:00 - 10:00", rating: "★ 3.7 |📍 2.2 km", image: "4"),
        .init(id: 4, name: "Easy Mart", time: "8:00 - 12:00", rating: "★ 4.7 |📍 2.7 km", image: "5"),
        .init(id: 5, name: "Let's Shop", time: "7:00 - 11:00", rating: "★ 4.0 |📍 3.0 km", image: "6")
    ]
    var body: some View {
        ScrollView(.vertical){
            
            ForEach(dataArray,id: \.id){nearData in
                HStack{
                RoundedRectangle(cornerRadius: 14)
                        .foregroundStyle(.gray.opacity(0.3))
                        .frame(width: 100,height: 100)
                        .overlay(
                            Image(nearData.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        )
                    VStack(alignment:.leading){
                        Text("\(nearData.name)")
                            .font(.headline)
                        Text("\(nearData.time)")
                            .font(.subheadline)
                            .foregroundStyle(.gray)
                        Text("\(nearData.rating)")
                        
                    }
                }            }
        }

        
    }
}

#Preview {
    NearYouView()
}
