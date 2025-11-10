//
//  Task.swift
//  SwiftUILayoutChallenges
//
//  Created by iOS Developer on 10/11/25.
//

import Foundation
import SwiftUI

struct TaskModel: Identifiable{
    let id: UUID = UUID()
    let title: String
    let description: String
    let progress: Double
    let progressColor: Color
}

let mockTasks: [TaskModel] = [
    TaskModel(title: "Finish SwiftUI Challenge", description: "Complete the Dashboard UI project.", progress: 0.75, progressColor: .blue),
    TaskModel(title: "Learn Advanced Combine", description: "Study Publishers and Subscribers.", progress: 0.30, progressColor: .orange),
    TaskModel(title: "Refactor Database Layer", description: "Optimize Core Data setup.", progress: 1.0, progressColor: .green),
    TaskModel(title: "Design Onboarding Flow", description: "Create mockups for the first user experience.", progress: 0.50, progressColor: .purple)
]

