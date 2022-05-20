//
//  VStack.swift
//  TryBasic
//
//  Created by Ton on 5/20/22.
//

import Foundation
import SwiftUI

struct SecondView: View {
    
    var body: some View {
        //https://cocoacasts.com/swiftui-fundamentals-customizing-views-with-modifiers
        VStack(alignment: .leading) {
            Text("title")
                .font(.title)
                .foregroundColor(.green)
                .background(.red)
            Text("title")
                .underline()
                .bold()
                .padding()

        }
    }
}
