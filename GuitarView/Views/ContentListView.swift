//
//  ContentListView.swift
//  GuitarView
//
//  Created by Tom Atkins on 9/29/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentListView: View {
    
    @State private var selectedGuitarType: GuitarType? = nil
    @Environment(\.openImmersiveSpace) var openImmersiveScene
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveScene
    
    @State private var isShowingImmersive = false
    
    let guitartypes = [
        
        GuitarType(name: "Electric Guitars", content: """
Invented in the 1940s, the solid body electric guitar was pioneered by innovators like Les Paul and Leo Fender. The Fender Telecaster, introduced in 1950, and the Gibson Les Paul, introduced in 1952, revolutionized music by providing a louder and more versatile instrument for genres like rock, blues, and pop.

"""),
        GuitarType(name: "Acoustic Guitars", content: """
Originating in the 19th century, the steel-string acoustic guitar evolved from earlier gut-string instruments. C.F. Martin & Company played a significant role in its development, introducing the X-bracing system in the 1850s. This type of guitar gained popularity in the early 20th century with the rise of country, blues, and folk music.

"""),
        GuitarType(name: "Bass Guitars", content: """
The electric bass guitar was invented by Leo Fender in 1951 with the introduction of the Fender Precision Bass. It quickly replaced the double bass in many genres, providing a more portable and amplified option for bassists in rock, jazz, and pop music.
"""),

        
    ]
    
    

    var body: some View {
        VStack {
            TabView {
                NavigationSplitView {
                    List(guitartypes, selection: $selectedGuitarType) { guitarType in
                        NavigationLink(guitarType.name, value:guitarType)
                    }.font(.largeTitle)
                        .foregroundColor(.red)
                } detail: {
                    if let selectedGuitarType = selectedGuitarType {
                        GuitarTypeView(guitarType: selectedGuitarType)
                    } else {
                        Text("Select a Guitar Type to see it's details.")
                    }
                }
                .tabItem {
                    Image(systemName: "guitars.fill")
                    Text("Guitar Types")
                }
                NavigationSplitView {
                    Text("Volume Tab")
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                } detail: {
                    VolumeView()
                }
                .tabItem {
                    Image(systemName: "cube")
                    Text("Volume")
                }
                NavigationSplitView {
                    Text("Immersive Tab")
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                } detail: {
                
                    HStack {
                        Button("Open ImmersiveSpace") {
                            Task {
                                let result = await openImmersiveScene(id: "ImmersiveScene")
                                isShowingImmersive = true
                                if case .error = result {
                                    print("Error loading scene.")
                                    isShowingImmersive = false
                                }
                            }
                        }.foregroundColor(.blue)
                    }
                }
                .tabItem {
                    Image(systemName: "globe")
                    Text("Immersive")
                }
            }.padding()
                .opacity(isShowingImmersive ? 0 : 1)
            
        }
            
        }
    
    }



#Preview(windowStyle: .automatic) {
    ContentListView()
}
