//
//  SkyView.swift
//  GuitarView
//
//  Created by Tom Atkins on 9/29/24.
//

import SwiftUI
import RealityKit

struct InsideTaylor: View {
    var body: some View {
      RealityView { content in
        guard let resource = try? await TextureResource(named: "insidetaylor") else {
          return
        }
        var material = UnlitMaterial()
        material.color = .init(texture: .init(resource))
        
        let entity = Entity()
        entity.components.set(ModelComponent(mesh: .generateSphere(radius: 1000), materials: [material]
        ))
        // point the texture inwards
        entity.scale *= .init(x: -1, y: 1, z: 1)
        
        content.add(entity)
      }
    }
}

#Preview {
    InsideTaylor()
}
