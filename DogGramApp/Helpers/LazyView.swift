//
//  LazyView.swift
//  DogGramApp
//
//  Created by Weiqi on 12/12/23.
//

import Foundation
import SwiftUI

struct LazyView<Content: View>: View {
    
    var content: () -> Content
    
    var body: some View {
        self.content()
    }
    
}

