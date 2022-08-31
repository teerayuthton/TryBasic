//
//  TrySOLIDView.swift
//  TryBasic
//
//  Created by Ton on 8/31/22.
//

import Foundation
import SwiftUI

//https://www.raywenderlich.com/21503974-solid-principles-for-ios-apps
struct TrySOLIDView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("SOLID")
                .font(.title)
                .foregroundColor(.red)
                .background(.clear)
            Text("title")
                .bold()
                .padding()

        }
    }
}
