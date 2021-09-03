//
//  ActivityIndicator.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//
#if !os(macOS)
import SwiftUI

public struct ActivityIndicator: UIViewRepresentable {

    public init(){}
    
    public func makeUIView(
    context: UIViewRepresentableContext<ActivityIndicator>
  ) -> UIActivityIndicatorView {
    return UIActivityIndicatorView(style: .large)
  }
  
    public func updateUIView(
    _ uiView: UIActivityIndicatorView,
    context: UIViewRepresentableContext<ActivityIndicator>
  ) {
    uiView.startAnimating()
  }

}
#endif
