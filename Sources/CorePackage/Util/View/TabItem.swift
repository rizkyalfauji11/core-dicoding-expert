//
//  TabItem.swift
//  Core
//
//  Created by Rizky Alfa Uji Gultom on 03/09/21.
//

import SwiftUI

public struct TabItem: View {
    
    var imageName: String
    var title: String

    public init(imageName: String, title: String){
        self.imageName = imageName
        self.title = title
    }
    
    public var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(title)
        }
    }
    
}
