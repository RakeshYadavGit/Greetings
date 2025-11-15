//
//  TitleView.swift
//  Greetings
//
//  Created by Rakesh Yadav on 01/11/25.
//

import SwiftUI

struct TitleView: View {
    
    @State private var isRotated: Bool = false
    @State private var subtitle: String = "Exploring iOS Programming!"
    
    private let subtitles: [String] = [
        "Exploring iOS Programming!",
        "Learning swiftUI!",
        "Hello Word!!",
        "Welcome Back!"
    ]
    
    var roatationAnagle: Angle {
        isRotated ? .zero : .degrees(360)
    }
    
    var angularGradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .yellow, .red, .purple, .blue, .green]), center: .center, angle: .degrees(70))
    }
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                Text("Greetings!")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(self.subtitle)
                    .onTapGesture {
                        self.subtitle = self.subtitles.randomElement() ?? "Welcome!!"
                    }
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(self.angularGradient, lineWidth: 15)
                .rotationEffect(self.roatationAnagle)
                .frame(width: 70, height: 70)
                .onTapGesture {
                    withAnimation {
                        self.isRotated.toggle()
                    }
                }
            
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
    
}
