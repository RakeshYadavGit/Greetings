//
//  TextView.swift
//  Greetings
//
//  Created by Rakesh Yadav on 01/11/25.
//

import SwiftUI

struct TextView: View {
    
    let text: String
    @State var color: Color
    
    private let colors: [Color] = [
        .red,
        .green,
        .blue,
        .yellow,
        .pink,
        .purple,
        Color(red: 0.5, green: 0.5, blue: 0.5),
        Color(red: 0, green: 0.5, blue: 0.5),
        Color(red: 139/255, green: 225/255, blue: 240/255)
    ]
    
    var body: some View {
        Text(self.text)
            .fontWeight(.semibold)
            .foregroundStyle(.white)
            .padding()
            .background(self.color.opacity(0.4))
            .cornerRadius(20)
            .shadow(
                color: self.color,
                radius: 5,
                x: 10,
                y: 10
            )
            .onTapGesture {
                withAnimation {
                    self.color = self.colors.randomElement() ?? .red
                }
            }
    }
}

#Preview {
    TextView(text: "Greeting", color: .pink)
}
