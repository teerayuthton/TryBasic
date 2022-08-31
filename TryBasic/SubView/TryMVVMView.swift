//
//  TryMVVMView.swift
//  TryBasic
//
//  Created by Ton on 8/31/22.
//

import Foundation
import SwiftUI

//https://www.hackingwithswift.com/books/ios-swiftui/introducing-mvvm-into-your-swiftui-project
struct TryMVVMView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("MVVM")
                .font(.title)
                .foregroundColor(.red)
                .background(.clear)
            Text("title")
                .bold()
                .padding()

        }
    }
}
