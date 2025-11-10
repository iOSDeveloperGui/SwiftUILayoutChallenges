//
//  DashboardView.swift
//  SwiftUILayoutChallenges
//
//  Created by iOS Developer on 10/11/25.
//

import Foundation
import SwiftUI

struct DashboardView: View{
    @State var isAnimated: Bool = false
    let tasks: [TaskModel] = mockTasks
    
    var body: some View{
        NavigationStack{
            List{
                ForEach(tasks){ task in
                    TaskRowComponent(task: task, isAnimated: isAnimated)
                    
                }
            }
            .background(Color.black.ignoresSafeArea())
            .preferredColorScheme(.dark)
            .padding(.vertical, 16)
            .navigationTitle("Dashboard 📊")
            .navigationBarTitleDisplayMode(.automatic)
            .onAppear{
                Task{
                    do{
                        try await Task.sleep(nanoseconds: 1_000_000_000)
                        isAnimated = true
                    }
                }
            }
        }
    }
}

#Preview {
    DashboardView()
}
