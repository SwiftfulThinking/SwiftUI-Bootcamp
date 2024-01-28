//
//  NavigationSplitViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Nick Sarno on 1/27/24.
//

import SwiftUI

// NavigationSplitView -> iPad, MacOS, VisionOS


struct NavigationSplitViewBootcamp: View {
    
    @State private var visibility: NavigationSplitViewVisibility = .all
    @State private var selectedCategory: FoodCategory? = nil
    @State private var selectedFruit: Fruit? = nil

    var body: some View {
        NavigationSplitView(columnVisibility: $visibility) {
            List(FoodCategory.allCases, id: \.rawValue, selection: $selectedCategory) { category in
                NavigationLink(category.rawValue.capitalized, value: category)
            }
            .navigationTitle("Categories")
        } content: {
            if let selectedCategory {
                Group {
                    switch selectedCategory {
                    case .fruits:
                        List(Fruit.allCases, id: \.rawValue, selection: $selectedFruit) { fruit in
                            NavigationLink(fruit.rawValue.capitalized, value: fruit)
                        }
                    case .vegetables:
                        EmptyView()
                    case .meats:
                        EmptyView()
                    }
                }
                .navigationTitle(selectedCategory.rawValue.capitalized)
            } else {
                Text("Select a category to begin!")
            }
        } detail: {
            if let selectedFruit {
                Text("You selected: \(selectedFruit.rawValue)")
                    .font(.largeTitle)
                    .navigationTitle(selectedFruit.rawValue.capitalized)
            } else {
                Text("Select something!")
            }
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    NavigationSplitViewBootcamp()
}

enum FoodCategory: String, CaseIterable {
    case fruits, vegetables, meats
}
enum Fruit: String, CaseIterable {
    case apple, banana, orange
}
