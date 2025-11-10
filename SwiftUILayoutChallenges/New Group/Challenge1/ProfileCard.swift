//
//  CardComponent.swift
//  SwiftUILayoutChallenges
//
//  Created by iOS Developer on 09/11/25.
//


// MARK: - Challenge 1: Card Layout
// Create a card with an image on the left, title and subtitle on the right
// Requirements:
// - Image should be 200x width, rounded
// - Title should be bold
// - Subtitle should be gray and smaller
// - Add a chevron icon on the far right

import Foundation
import SwiftUI

struct ProfileCard: View {
    var body: some View {
        HStack{
            Image("profile")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 110)
                .overlay(
                    Circle()
                        .stroke(Color.red, lineWidth: 4)
                )
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 8){
                Text("Hinako Shimizu")
                    .font(.title2)
                    .bold()
                    .foregroundStyle(Color.white)
                
                Text("Hinako Shimizu is the player character of the video game Silent Hill")
                    .font(.subheadline)
                    .foregroundStyle(Color.gray)
                
            }
            Spacer()
            
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
                .font(.title3)
                
        }
        .padding(.all)
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.thinMaterial)
                .strokeBorder(Color.gray, lineWidth: 1)
        )
        .padding(.horizontal, 12)
    }
}

#Preview {
    ProfileCard()
        .preferredColorScheme(.dark)
}
