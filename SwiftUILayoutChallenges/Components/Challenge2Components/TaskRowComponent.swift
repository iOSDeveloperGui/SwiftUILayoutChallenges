//
//  TaskRow.swift
//  SwiftUILayoutChallenges
//
//  Created by iOS Developer on 10/11/25.
//

import Foundation
import SwiftUI

struct TaskRowComponent: View{
    let task: TaskModel
    let isAnimated: Bool
    
    var body: some View{
        VStack(alignment: .leading, spacing: 8){
            HStack{
                Text(task.title)
                    .font(.headline)
                
                Spacer()
                
                Text("\(Int((isAnimated ? task.progress : 0.0) * 100))%")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundStyle(task.progressColor)
            }
            Text(task.description)
                .font(.caption)
                .foregroundStyle(Color.gray)
                
            
            CustomProgressBarComponent(progress: isAnimated ? task.progress : 0.0, color: task.progressColor)
                .padding(.top, 16)
                
        }
        .padding(.vertical, 16)
    }
    
}
