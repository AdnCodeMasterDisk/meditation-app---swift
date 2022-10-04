//
//  meditacionApp.swift
//  meditacion
//
//  Created by Daniel on 3/10/22.
//

import SwiftUI

@main
struct meditacionApp: App {
    
    @StateObject var viewRouter = ViewRouter()
    
    var body: some Scene {
        
        WindowGroup {
            ContentView(viewRouter: viewRouter)
        }
    }
}
