//
//  AmplifyConnect.swift
//  messager-app
//
//  Created by Sparsh Pai on 2022-01-23.
//

import Foundation
import Amplify

class AmplifyConnect: ObservableObject {
    @Published var messages = [Message]()
    
    func send(_ message: Message) {
        Amplify.API.mutate(request: .create(message)) { [weak self] mutationResult in
            
            switch mutationResult {
            case.success(<#T##Result<Message, GraphQLResponseError<Message>>#>):
            }
            
            
        }
    }
}
