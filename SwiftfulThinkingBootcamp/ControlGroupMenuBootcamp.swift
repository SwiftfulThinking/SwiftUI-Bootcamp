//
//  ControlGroupMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Nick Sarno on 1/27/24.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu") {
            ControlGroup {
                Button("Uno") {
                    
                }
                Button("Dos") {
                    
                }
//                Button("Tres") {
//                    
//                }
                Menu("How are you?") {
                    Button("Good") {
                        
                    }
                    Button("Bad") {
                        
                    }
                }
            }
            Button("Two") {
                
            }
            Menu("Three") {
                Button("Hi") {
                    
                }
                Button("Hello") {
                    
                }
                
            }
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
