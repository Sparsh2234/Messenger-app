//
//  messager_appApp.swift
//  messager-app
//
//  Created by Sparsh Pai on 2022-01-22.
//

import SwiftUI
import Amplify
import AmplifyPlugins

@main
struct messager_appApp: App {
    
    init () {
        configureAmplify()
    }
    
    var body: some Scene {
        WindowGroup {
            MessagesView()
        }
    }
    
    func configureAmplify() {
        do {
            let models = AmplifyModels()
            try Amplify.add(plugin: AWSAPIPlugin(modelRegistration: models))
            try Amplify.configure()
            
            print ("Configured Amplify")
        } catch {
            print("An error occurred setting up Amplify: \(error)")
        }
    }
}
