//
//  MessagesView.swift
//  messager-app
//
//  Created by Sparsh Pai on 2022-01-22.
//

import SwiftUI

struct MessagesView: View {
    
    @State var text = String()
    @ObservedObject var amp = AmplifyConnect()
    
    let currentUser = "test1"
    
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVStack {
                    
                    ForEach(amp.messages) { message in
                        MessageRow(message: message, isCurrentUser: message.senderName == currentUser)
                    }
                    
                }
            }
            
            HStack {
                TextField("Enter Message", text: $text)
                Button("Send", action: didTapSend).padding().foregroundColor(.white).background(Color.purple)
            }
        }.padding(.horizontal, 16)
    }
    
    func didTapSend() {
        print(text)
        text.removeAll()
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}

extension Message: Identifiable {
    
}
