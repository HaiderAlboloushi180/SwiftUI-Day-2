//
//  ContentView.swift
//  SwiftUIDay2
//
//  Created by Haider Alboloushi on 8/20/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [String] = ["0", "0", "0"]
    var body: some View {
        VStack{
            ThekrButton(counter: $counter[0])
            ThekrButton(counter: $counter[1])
            ThekrButton(counter: $counter[2])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ThekrButton: View {
    @Binding var counter: String
    var body: some View {
        HStack{
            Text("أستغفر الله العظيم").font(.largeTitle)
            Button(action: {
                self.counter = String(Int(self.counter)! + 1)
            }) {
                Text(counter)
                    .font(.largeTitle)
            }.frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
        }
    }
}
