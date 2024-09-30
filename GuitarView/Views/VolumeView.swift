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
  
  var body: some View {
    VStack {
  
      RealityView { content in
        // Add the initial RealityKit content
        if let scene = try? await Entity(named: "Scene", in: realityKitContentBundle) {
          content.add(scene)
  
        }
      }
    }
  }
}

#Preview {
    VolumeView()
}
