//
//  HomeScreen.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-05.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        VStack(alignment:.leading,spacing: 10){
            HStack{
                Image(systemName: "line.3.horizontal")
                Spacer()
                Image(systemName: "cart.badge.plus")
            }
            .font(.title3)
            Text("Hey")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Text("Find fresh fruits that you want")
            
            RoundedRectangle(cornerRadius: 15)
                .fill(.gray.opacity(0.3))
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search fresh fruits")
                            .foregroundStyle(.gray)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }.padding()
                ).frame(width: 350,height: 50,alignment: .center)
            Text("Top Selling")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            TopSellingView()
            Text("Near You")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            NearYouView()
            Spacer()
        }
        .padding()

    }
}

#Preview {
    HomeScreen()
}
