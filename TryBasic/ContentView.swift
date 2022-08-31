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
    /*
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
    }*/
    
    //Try to make push different view
    //https://stackoverflow.com/a/62321613/3057165
    enum MenuItem: String, CaseIterable, Identifiable {
        var id : MenuItem {
            self
        }

        case mvvm = "MVVM"
        case mvp = "MVP"
        case solid = "SOLID"
        
        static let infoSection: [MenuItem] = [
            .mvvm,
            .mvp,
            .solid
        ]
    }
    
    var body: some View {
        NavigationView {
            List {
                makeSection(
                    title: "Info",
                    items: MenuItem.infoSection
                )
            }
            .navigationBarTitle("Menu")
        }
    }
        
    private func makeSection(title: String, items: [MenuItem]) -> some View {
        Section(header: Text(title)) {
            ForEach(items, id: \.self) { item in
                NavigationLink(
                    destination: self.destination(forItem: item)) {
                    Text(item.rawValue)
                }
            }
        }
    }
    
    private func destination(forItem item: MenuItem) -> some View {
        switch item {
        case .mvvm:
            return AnyView(TryMVVMView())
        case .mvp:
            return AnyView(TryMVPView())
        case .solid:
            return AnyView(TrySOLIDView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(title: "previews")
                    .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .environment(\.sizeCategory, .extraSmall
                )
            ContentView(title: "previews")
                    .previewDevice(PreviewDevice(rawValue: "iPhone 12"))
                .environment(\.sizeCategory, .extraSmall)
        }
    }
}
