//
//  DrawingWrapper.swift
//  DrawingWithSwiftUI
//
//  Created by Murat Can KOÇ on 3.06.2021.
//

import SwiftUI


struct DrawingWrapper: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = DrawingViewController
    
    
    var manager: DrawingManager
    var id: UUID
    
    
    
    func makeUIViewController(context: Context) -> DrawingViewController {
        let viewcontroller = DrawingViewController()
        viewcontroller.drawingData = manager.getData(for: id)
        viewcontroller.drawingChanged = {data in
            manager.update(data: data, for: id)
        }
        return viewcontroller
    }
    
    func updateUIViewController(_ uiViewController: DrawingViewController, context: Context) {
        uiViewController.drawingData = manager.getData(for: id)
    }
}
