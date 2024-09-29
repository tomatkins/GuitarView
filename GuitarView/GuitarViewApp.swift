//
//  GuitarViewApp.swift
//  GuitarView
//
//  Created by Tom Atkins on 9/29/24.
//

import SwiftUI

@main
struct GuitarViewApp: App {

   
    @State private var currentStyle: ImmersionStyle = .full
  
    var body: some Scene {
        WindowGroup {
            ContentListView()
        } .windowStyle(.plain)

        ImmersiveSpace(id: "ImmersiveScene") {
            ImmersiveView()
        }.immersionStyle(selection: $currentStyle, in: .full)
    }
}
