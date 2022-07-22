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

        case firstCase = "firstCase"
        case secondCase = "secondCase"
        case thirdCase = "thirdCase"
        
        static let infoSection: [MenuItem] = [.firstCase,
            .secondCase,
            .thirdCase]
    }
    
    var body: some View {
        NavigationView {
            List {
                makeSection(title: "Info", items: MenuItem.infoSection)
            }
            .navigationBarTitle("Menu")
        }
    }
        
    private func makeSection(title: String, items: [MenuItem]) -> some View {
        Section(header: Text(title)) {
            ForEach(items, id: \.self) { item in
                NavigationLink(destination: self.destination(forItem: item)) {
                    Text(item.rawValue)
                }
            }
        }
    }
    
    private func destination(forItem item: MenuItem) -> some View {
            switch item {
                case .firstCase: return AnyView(Text("Staff View"))
                case .secondCase: return AnyView(Text("Projects View"))
                case .thirdCase: return AnyView(Text("Invoices View"))
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
