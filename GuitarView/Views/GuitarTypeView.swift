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
    GuitarTypeView(guitarType: GuitarType(name: "visionOS", content: "All about different kinds of guitars, and how to play them."))
}
