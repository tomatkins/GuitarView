//
//  GuitarType.swift
//  GuitarView
//
//  Created by Tom Atkins on 9/29/24.
//

import Foundation

struct GuitarType: Identifiable, Hashable {
    let name: String
    let id = UUID()
    let content: String
}
