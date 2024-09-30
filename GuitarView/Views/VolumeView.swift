//
//  VolumeView.swift
//  GuitarView
//
//  Created by Tom Atkins on 9/29/24.
//


import SwiftUI
import RealityKit
import RealityKitContent

struct VolumeView: View {
  
  @State var runAnimation = false
  
  var body: some View {
    // 15
    VStack {
     
      //  12
      RealityView { content in
        // Add the initial RealityKit content
        if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
          content.add(scene)
          // 14
        }
      } update: { content in
        if let scene = content.entities.first {
          scene.availableAnimations.forEach { animation in
            if runAnimation {
              scene.playAnimation(animation.repeat(), transitionDuration: 3, startsPaused: false)
            } else {
              scene.stopAllAnimations()
            }
          }
        }
      }
    }
  }
}

#Preview {
    VolumeView()
}
