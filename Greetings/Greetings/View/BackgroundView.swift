//
//  BackgroundView.swift
//  Greetings
//
//  Created by Rakesh Yadav on 01/11/25.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        LinearGradient(
            colors: [.myBlue, Color(red: 139/255, green: 22/255, blue: 240/255)],
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )
        .opacity(0.3)
        .ignoresSafeArea()
    }
}
