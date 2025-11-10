//
//  CustomProgressBar.swift
//  SwiftUILayoutChallenges
//
//  Created by iOS Developer on 10/11/25.
//

import Foundation
import SwiftUI

struct CustomProgressBarComponent: View{
    
    let progress: Double
    let color: Color
    
    var body: some View{
        ZStack(alignment: .leading){
            Capsule()
                .frame(height: 16)
                .opacity(0.2)
                .foregroundStyle(color)
            
            GeometryReader{ geometry in
                Capsule()
                    .frame(width: geometry.size.width * CGFloat(progress), height: 10)
                    .foregroundStyle(color)
                    .animation(.easeInOut, value: progress)
                    .shadow(color: Color.white, radius: 2)
            }
        }
        .frame(height: 12)
        
    }
}

#Preview {
    CustomProgressBarComponent(progress: 0.29, color: Color.purple)
}
