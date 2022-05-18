//
//  ContentView.swift
//  TryBasic
//
//  Created by Ton on 5/18/22.
//

import SwiftUI

struct ContentView: View {
    //https://cocoacasts.com/swiftui-fundamentals-customizing-views-with-modifiers
    @State private var showDetails = false
    
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .foregroundColor(.green)
                .background(.red)
            Text(title)
                .underline()
                .bold()
                .padding()
            Button("Show details") {
                showDetails.toggle()
            }

            if showDetails {
                Text("You should follow me on Twitter: @twostraws \n")
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(title: "previews")
                    .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .environment(\.sizeCategory, .extraSmall)
            ContentView(title: "previews")
                    .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .environment(\.sizeCategory, .extraSmall)
        }
    }
}
