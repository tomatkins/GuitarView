//
//  GuitarType.swift
//  GuitarView
//
//  Created by Tom Atkins on 9/29/24.
//

import SwiftUI

struct GuitarTypeView: View {
   
    let guitarType: GuitarType
    
    var body: some View {
        
        VStack {
            Text(guitarType.name)
                .font(.largeTitle)
            Text(guitarType.content)
            Spacer()
        }
        .padding(20)
       navigationTitle(guitarType.name)
    }
}

#Preview {
    GuitarTypeView(guitarType: GuitarType(name: "visionOS", content: "Content, content and content. Ut necessitatibus voluptate praesentium id eos eaque itaque cumque. Sunt error et et. Dignissimos veritatis eum ad eius omnis. Pariatur eaque nihil fuga omnis quia. Aperiam corporis odit vero aspernatur in recusandae.Delectus quo sed dolores quo architecto et necessitatibus aut. Velit impedit animi est. Sapiente animi nostrum aperiam quod ut eos."))
}
