//
//  CounterView.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-06.
//

import SwiftUI

struct CounterView: View {
    @State var count = 0
    var body: some View {
        HStack(spacing:25){
            Button{
                if count != 10{
                    count += 1
                }
                
            }label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
                .font(.title)
            Button{
                if count != 0{
                    count -= 1
                }
            }label: {
                Image(systemName: "minus")
            }
        }
        .foregroundStyle(.black)
        .frame(width: 130,height: 40)
        .background(Color("bgColor"))
        .opacity(0.5)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding()
    }
}

#Preview {
    CounterView()
}
