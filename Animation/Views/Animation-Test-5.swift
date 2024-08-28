//
//  Animation-Test-5.swift
//  Animation
//
//  Created by Famil Mustafayev on 17.08.24.
//

import SwiftUI

struct Animation_Test_5: View {
    @State private var txt: String = ""
    @State private var show: Bool = false

    var body: some View {
        ZStack(alignment:.center){
            Color.white
            VStack(spacing: 20.0){
                Text("Animation Test - 5")
                
                Button(action: {
                    show.toggle()
                }, label: {
                    Text("Login now").font(.system(size: 32))
                })
                Image(systemName: "person")
                
                VStack(spacing: 10.0){
                    TextField(text: $txt) {
                        Text("Ended your name").foregroundStyle(.black)
                    }
                    TextField(text: $txt) {
                        Text("Ended your surname").foregroundStyle(.black)
                    }
                }.frame(width: 500, height: 200).textFieldStyle(.roundedBorder).font(.system(size: 20))
                    .offset(x: show ? 0 : -1600)
                    .scaleEffect(show ? 1 : 0.5)
                    .animation(.bouncy(duration: 2),value: show)
                Spacer()
                VStack{
                    HStack(spacing: 30){
                        Text("Menyu")
                        Image(systemName: "line.3.horizontal")
                    }
                    List {
                        Text("List number one")
                        Text("List number two")
                        Text("List number three")

                    }
                }.font(.system(size: 20)).background(.gray).clipShape(RoundedRectangle(cornerRadius: 25.0))
                    .offset(y: show ? 0 : 500)
                    .scaleEffect(show ? 1 : 0.5)
                    .animation(.bouncy(duration: 2),value: show)
            }.foregroundStyle(.black).font(Font.custom("Futura", size: 44))
                .padding()
        }
    }
}

#Preview {
    Animation_Test_5()
}
