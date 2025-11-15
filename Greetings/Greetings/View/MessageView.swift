//
//  MessageView.swift
//  Greetings
//
//  Created by Rakesh Yadav on 01/11/25.
//

import SwiftUI

struct MessageView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Hello There!", color: .myPink),
        .init(text: "Hi!!", color: .myBlue),
        .init(text: "How are you???", color: .myRed),
        .init(text: "I am doing goooood!!!! How are you?", color: .myPurple),
        .init(text: "Me too", color: .myGreen),
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(self.messages) { item in
                TextView(text: item.text, color: item.color)
            }
        }
    }
}

#Preview {
    MessageView()
}
