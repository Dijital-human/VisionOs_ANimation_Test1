//
//  Animation-Test-3.swift
//  Animation
//
//  Created by Famil Mustafayev on 17.08.24.
//

import SwiftUI

struct Animation_Test_3: View {
    @State private var show = false
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 25.0).fill(.white)
            
            VStack{
                HStack{
                    RoundedRectangle(cornerRadius: 25.0).fill(.cyan)
                        .frame(width: 300, height: 300)
                        .offset(x: show ? 400 : 0)
                        .animation(.easeInOut(duration: 3), value: show)
                    Spacer()
                    RoundedRectangle(cornerRadius: 25.0).fill(.cyan)
                        .frame(width: 300, height: 300)
                        .offset(x: show ? -400 : 0)
                        .animation(.easeInOut(duration: 3), value: show)
                    
                }
                HStack{
                    Circle().fill(.brown)
                        .position(x: show ? 900 : 200, y: 200)
                        .animation(.easeInOut(duration: 3), value: show)
                    Circle().fill(.indigo)
                        .position(x: show ? -400 : 200, y: 200)
                        .animation(.easeInOut, value: show)

                }
                Button(action: {show.toggle()}, label: {
                    Text("Button").font(.extraLargeTitle).background(.blue)
                })
            }
        }
    }
}

#Preview {
    Animation_Test_3()
}
