//
//  BadgesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Nick Sarno on 11/14/21.
//

import SwiftUI

// List
// TabView

struct BadgesBootcamp: View {
    var body: some View {
        List {
            Text("Hello, world!")
                .badge(5)
            Text("Hello, world!")
            Text("Hello, world!")
            Text("Hello, world!")
        }
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge("NEW")
//
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

struct BadgesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BadgesBootcamp()
    }
}
