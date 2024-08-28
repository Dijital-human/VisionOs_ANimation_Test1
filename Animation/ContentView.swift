//
//  ContentView.swift
//  Animation
//
//  Created by Famil Mustafayev on 17.08.24.
//

import SwiftUI
struct ContentView: View {
    @State private var show: Bool = false
    var body: some View {
        VStack {
            Text("Animation").font(.extraLargeTitle)
            HStack{
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.blue)
                    .scaleEffect(show ? 1.5 : 1)
                    .animation(.easeInOut, value: show)
                
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.blue)
                    .offset(x: show ? 500.0 : 0)
                    .animation(.easeInOut, value: UUID())
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.blue)
                    .rotationEffect(.degrees(show ? 240 : 0))
                    .animation(.easeInOut, value: show)
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 200, height: 200)
                    .foregroundStyle(.blue)
                    .position(x: show ? 300: 0, y: 100)
                    .rotationEffect(.degrees(show ? 360 : 0), anchor: .bottomLeading)
                    .animation(.easeIn, value: show)
            }
            Spacer()
            Button(action: {
                show.toggle()
            }, label: {
                Text("Animation").frame(maxWidth: .infinity,maxHeight: .infinity).foregroundColor(.white)
            }).frame(width: 300, height: 80).background(Capsule().fill(.blue)).padding(.bottom)
        }
        .padding()
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
