//
//  Animation-Test-2.swift
//  Animation
//
//  Created by Famil Mustafayev on 17.08.24.
//

import SwiftUI

struct Animation_Test_2: View {
    @State private var show:Bool = false
    var body: some View {
        ZStack(alignment: .top, content: {
            RoundedRectangle(cornerRadius: show ? 25.0 : 0)
                .fill(show ? .cyan : .purple)
            VStack{
                Text("Animation Test - 2")
                    //.position(x: show ? 200 : 1000, y: 100)
                    .font(.extraLargeTitle)
                    .offset(x: show ? 300 : -300, y: 10.0)
                    .animation(.easeInOut(duration: 2), value: show)
                
                Button(action: {show.toggle()}, label: {
                    Text("Button").font(.largeTitle)
                })
                Circle().fill(.white).frame(width: 200, height: 200)
                    .offset(x: show ? 300 : -300)
                    .animation(.easeInOut(duration: 3), value: show)
            }.font(show ? Font.custom("Futura", size: 44) : Font.custom("Optima", size: 62))
                .foregroundStyle(show ? .black : .white)
        }).animation(.easeIn(duration: 4), value: show)
    }
}

#Preview {
    Animation_Test_2()
}
