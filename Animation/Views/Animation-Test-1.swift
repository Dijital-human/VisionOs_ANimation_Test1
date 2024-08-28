//
//  Animation-Test-1.swift
//  Animation
//
//  Created by Famil Mustafayev on 17.08.24.
//

import SwiftUI

struct Animation_Test_1: View {
    @State private var show: Bool = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: show ? 80 : 0).fill(show ? .purple : .cyan)
            
            VStack{
                Text("Animation Test - 1").font(show ? .extraLargeTitle : .headline).foregroundStyle(show ? .black : .pink)
                    .scaleEffect(show ? 2 : 1)
                    .rotationEffect(.degrees(show ? 360 : 0), anchor: .center)
                    .animation(.easeInOut(duration: 5),value: show)
                    
                ZStack{
                    RoundedRectangle(cornerRadius: show ? 60 : 0).fill(.blue)
                        .frame(width: 200, height: 200)
                        .overlay {
                            Circle().fill(.white).padding()
                        }
                        .rotationEffect(.degrees(show ? 90 : 0), anchor: .bottomTrailing)
                        .animation(.easeIn, value: show)
                    RoundedRectangle(cornerRadius: 25.0).fill(.blue)
                        .frame(width: 200, height: 200)
                        .overlay {
                            Circle().fill(.white).padding()
                        }
                        .rotationEffect(.degrees(show ? 90 : 0), anchor: .topLeading)
                        .animation(.easeIn, value: show)
                }
                Button(action: {show.toggle()}, label: {
                    Text("Button").frame(width: 300, height: 80)
                })
            
            }
        }.animation(.easeInOut(duration: 3), value: show)
    }
}

#Preview {
    Animation_Test_1()
}
