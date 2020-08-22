//
//  ThekrAssignment.swift
//  SwiftUIDay2
//
//  Created by Haider Alboloushi on 8/20/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct ThekrAssignment: View {
    @State var counter = ["0", "0", "0", "0", "0", "0", "0", "0", "0", "0"]
    @State var athkar = athkars
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: AthkarDestination(thekr: $athkar[0], counter: $counter[0])) {
                    VStack{
                    Text(self.athkar[0])
                    .modifier(TextModifier())
                    Text(self.counter[0])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[1], counter: $counter[1])) {
                    VStack{
                    Text(self.athkar[1])
                    .modifier(TextModifier())
                    Text(self.counter[1])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[2], counter: $counter[2])) {
                    VStack{
                    Text(self.athkar[2])
                    .modifier(TextModifier())
                    Text(self.counter[2])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[3], counter: $counter[3])) {
                    VStack{
                    Text(self.athkar[3])
                    .modifier(TextModifier())
                    Text(self.counter[3])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[4], counter: $counter[4])) {
                    VStack{
                    Text(self.athkar[4])
                    .modifier(TextModifier())
                    Text(self.counter[4])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[5], counter: $counter[5])) {
                    VStack{
                    Text(self.athkar[5])
                    .modifier(TextModifier())
                    Text(self.counter[5])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[6], counter: $counter[6])) {
                    VStack{
                    Text(self.athkar[6])
                    .modifier(TextModifier())
                    Text(self.counter[6])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[7], counter: $counter[7])) {
                    VStack{
                    Text(self.athkar[7])
                    .modifier(TextModifier())
                    Text(self.counter[7])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[8], counter: $counter[8])) {
                    VStack{
                    Text(self.athkar[8])
                    .modifier(TextModifier())
                    Text(self.counter[8])
                    .modifier(CounterModifier())
                    }
                }
                
                NavigationLink(destination: AthkarDestination(thekr: $athkar[9], counter: $counter[9])) {
                    VStack{
                    Text(self.athkar[9])
                    .modifier(TextModifier())
                    Text(self.counter[9])
                    .modifier(CounterModifier())
                    }
                }
            }
            .navigationBarTitle("Atkar")
        }
    }
}

struct ThekrAssignment_Previews: PreviewProvider {
    static var previews: some View {
        ThekrAssignment()
    }
}

struct TextModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .multilineTextAlignment(.center)
        .padding()
    }
}

struct CounterModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding()
            .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
            .clipShape(Circle())
    }
}

struct AthkarDestination: View {
    @Binding var thekr: String
    @Binding var counter: String
    var body: some View {
        VStack{
            Text(thekr)
                .onTapGesture {
                self.counter = String(Int(self.counter)! + 1)
            }
            .multilineTextAlignment(.center)
            .padding()
            Button(action: {
                self.counter = String(Int(self.counter)! + 1)
            }) {
                Text(counter)
                .modifier(CounterModifier())
            }
        }
    }
}
