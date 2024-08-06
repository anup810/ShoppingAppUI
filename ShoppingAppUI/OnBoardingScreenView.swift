//
//  OnBoardingScreenView.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-05.
//

import SwiftUI

struct OnBoardingScreenView: View {
    var body: some View {
        
        NavigationStack{
                VStack(spacing:30){
                    Spacer()
                    GeometryReader{ geo in
                        
                        Image("img")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .padding()
                            .frame(width: geo.size.width , height: geo.size.height)
                    }
                    
                    VStack(alignment: .leading,spacing: 10){
                        Text("Order your Favourite Fruits")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .font(.largeTitle)
                        
                        
                        Text("Eat fresh fruits and try to be healthy")
                            .font(.title3)
                            .foregroundStyle(.black.opacity(0.7))
                    }
                    Spacer()
                    NavigationLink(destination: HomeScreen()) {
                        RoundedRectangle(cornerRadius: 12)
                            .fill(Color("6"))
                            .frame(width: 280,height: 60,alignment: .trailing)
                            .overlay(
                                HStack(spacing:10){
                                    Text("Next")
                                        .font(.title)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    Image(systemName: "chevron.right")
                                    
                                }
                                    .foregroundStyle(.black)
                            )
                        
                    }
                    Spacer()
                }
            }
            .navigationTitle("")
            .navigationBarBackButtonHidden(true)
        }
    
}

#Preview {
    OnBoardingScreenView()
}
