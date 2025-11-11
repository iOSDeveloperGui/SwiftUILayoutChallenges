//
//  Shapes.swift
//  SwiftUILayoutChallenges
//
//  Created by iOS Developer on 11/11/25.
//

import Foundation
import SwiftUI

struct ShapesLayout: View{
    
    var body: some View{
        HStack{
            VStack(spacing: 20){
                Rectangle()
                    .foregroundStyle(Color.square)
                    .frame(width: 100, height: 100)
                
                Circle()
                    .foregroundStyle(Color.circle)
                    .frame(width: 100, height: 100)
            }
            .padding(.horizontal, 12)
            
            RoundedRectangle(cornerRadius: 40)
                .foregroundStyle(Color.rectangleGreen)
                .frame(width: 80, height: 230)
                .padding(.horizontal    )
        }
        .padding(.all)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .foregroundStyle(Color.bgSquare)
        )
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ShapesLayout()
        .preferredColorScheme(.dark)
}
