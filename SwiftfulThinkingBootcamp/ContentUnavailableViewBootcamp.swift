//
//  ContentUnavailableViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Nick Sarno on 1/27/24.
//

import SwiftUI

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        if #available(iOS 17.0, *) {
//            ContentUnavailableView.search(text: "abc")
            ContentUnavailableView(
                "No Internet Connection",
                systemImage: "wifi.slash",
                description: Text("Please connect to the internet and try again.")
            )
        } else {
            // Fallback on earlier versions
            // FakeContentUnavailableView()
        }
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
