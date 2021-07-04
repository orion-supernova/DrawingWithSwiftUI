//
//  AddNewDocument.swift
//  DrawingWithSwiftUI
//
//  Created by Murat Can KOÇ on 3.06.2021.
//

import SwiftUI


struct AddNewDocument: View {
    
    @ObservedObject var manager: DrawingManager
    @State private var documentName: String = ""
    @Binding var addShown: Bool
    
    
    var body: some View {
        
        VStack {
            
            Text("Enter document name ↓")
            
            TextField("Enter doc name here...", text: $documentName, onCommit: {
                save(fileName: documentName)
            })
            .frame(width: 300, height: 50, alignment: .center)
            .textFieldStyle(RoundedBorderTextFieldStyle())
             
            Button("Create") {
                save(fileName: documentName)
            }
            .padding(5)
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Capsule())
            
            
            
        }
        
        
    }
    
    private func save(fileName: String) {
        manager.addData(doc: DrawingDocument(id: UUID(), data: Data(), name: fileName))
        addShown.toggle()
    }
    
    
}
