//
//  ContentView.swift
//  Greetings
//
//  Created by Rakesh Yadav on 01/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack(alignment: .leading) {
                TitleView()
                Spacer()
                MessageView()
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
