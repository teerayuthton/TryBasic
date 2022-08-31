//
//  TryMVPView.swift
//  TryBasic
//
//  Created by Ton on 8/31/22.
//

import Foundation
import SwiftUI

//https://medium.com/movile-tech/swiftui-and-architectures-mvp-c816ff7fbadd
struct TryMVPView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("MVP")
                .font(.title)
                .foregroundColor(.red)
                .background(.clear)
            Text("title")
                .bold()
                .padding()

        }
    }
}
