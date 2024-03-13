//
//  CartButton.swift
//  SweaterShop
//
//  Created by Dhruv Sharma on 13/03/24.
//

import SwiftUI

struct CartButton: View {
    var numberOfProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top,5)
            if numberOfProducts > 0{
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(width: 15,height: 15)
                    .background(Color.red)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    
            }
        }
    }
}

#Preview {
    CartButton(numberOfProducts: 1)
}
