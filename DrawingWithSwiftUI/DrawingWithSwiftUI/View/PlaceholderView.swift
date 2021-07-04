//
//  PlaceholderView.swift
//  DrawingWithSwiftUI
//
//  Created by Murat Can KOÇ on 3.06.2021.
//

import SwiftUI



struct PlaceHolderView: View {
    
    
    var body: some View {
        
        VStack(spacing: 20) {
            
            Text("Lets draw something")
                .font(.largeTitle)
            
            
            Text("Select or create a new drawing from left menu")
            
            Image(systemName: "scribble")
                .font(.largeTitle)
        }
        .foregroundColor(.gray)
    }
}
