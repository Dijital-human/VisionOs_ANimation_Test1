//
//  Animation-Test-4.swift
//  Animation
//
//  Created by Famil Mustafayev on 17.08.24.
//

import SwiftUI

struct Animation_Test_4: View {
    @State private var show = true
    @State private var img = "arrowshape.right.fill"
    var body: some View {
        ZStack{
            Color.white.clipShape(RoundedRectangle(cornerRadius: 25.0))
            VStack{
                Button(action: {show.toggle()}, label: {
                    Text("Button")
                })
                HStack{
                    
                    Rectangle().fill(.blue).frame(width: 200, height: 100)
                        .overlay {
                            Text("1")
                        }.foregroundStyle(.white).font(.largeTitle).offset(x: 200.0, y: 0.0)
                        .rotationEffect(.degrees(show ? 320 : 0), anchor: .bottomLeading)
                        .opacity(show ? 0 : 1)
                        .animation(.easeInOut, value: show)
                    
                    Rectangle().fill(.blue).frame(width: 100, height: 200)
                        .overlay {
                            Text("2")
                        }.foregroundStyle(.white).font(.largeTitle).offset(x: -110.0, y: 50.0)
                        .rotationEffect(.degrees(show ? 320 : 0), anchor: .topTrailing)
                        .opacity(show ? 0 : 1)
                        .animation(.easeInOut, value: show)
                    
                    Rectangle().fill(.blue).frame(width: 200, height: 100)
                        .overlay {
                            Text("3")
                        }.foregroundStyle(.white).font(.largeTitle).offset(x: -115.0, y: 105.0)
                        .rotationEffect(.degrees(show ? 320 : 0), anchor: .bottomTrailing)
                        .opacity(show ? 0 : 1)
                        .animation(.easeInOut, value: show)
                    
                    
                    Rectangle().fill(.blue).frame(width: 100, height: 200)
                        .overlay {
                            Text("4")
                        }.foregroundStyle(.white).font(.largeTitle).offset(x: -115.0, y: 50.0)
                        .rotationEffect(.degrees(show ? 320 : 0), anchor: .topLeading)
                        .opacity(show ? 0 : 1)
                        .animation(.easeInOut, value: show)
                }
                
                
            }
            
        }
    }
}

#Preview {
    Animation_Test_4()
}
