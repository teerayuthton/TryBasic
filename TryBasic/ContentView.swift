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
        
        //https://www.hackingwithswift.com/quick-start/swiftui/building-a-menu-using-list
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: SecondView()) {
                                Text(item.name)
                            }
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
