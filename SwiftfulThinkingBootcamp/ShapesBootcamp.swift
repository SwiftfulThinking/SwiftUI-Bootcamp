//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Nick Sarno on 1/15/21.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 10)
            //.fill(Color.green)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            //.trim(from: 0.4, to: 1.0)
//            .stroke(Color.purple, lineWidth: 50)
            .strokeBorder(Color.red)
            .frame(width: 300, height: 200)
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
