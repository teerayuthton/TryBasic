//
//  ContentView.swift
//  TryBasic
//
//  Created by Ton on 5/18/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showDetails = false
    
    let title: String
    
    
    let menu = Bundle.main.decode([MenuSection].self ,from: "menu.json")
    
    var body: some View {
        //https://cocoacasts.com/swiftui-fundamentals-customizing-views-with-modifiers
        /*VStack(alignment: .leading) {
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
        }*/
        
        //https://www.hackingwithswift.com/quick-start/swiftui/building-a-menu-using-list
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(GroupedListStyle())
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
