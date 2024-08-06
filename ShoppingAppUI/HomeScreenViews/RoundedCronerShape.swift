//
//  RoundedCronerShape.swift
//  ShoppingAppUI
//
//  Created by Anup Saud on 2024-08-06.
//

import SwiftUI

struct RoundedCronerShape: Shape {
    let corners : UIRectCorner
    let radius: CGFloat
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
    
}

#Preview {
    RoundedCronerShape(corners: [.bottomLeft,.bottomRight] , radius: 50)
}
