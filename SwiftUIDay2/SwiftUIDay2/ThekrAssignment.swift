//
//  ThekrAssignment.swift
//  SwiftUIDay2
//
//  Created by Haider Alboloushi on 8/20/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct ThekrAssignment: View {
    var thekr: [String] = athkar
    var counter = "0"
    var body: some View {
        NavigationView{
            List{
                VStack{
                    Text(athkar[0])
                        .multilineTextAlignment(.center)
                        .padding()
                    Text(counter)
                        .font(.system(size: 20))
                    .frame(width: 50, height: 50, alignment: .center)
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .clipShape(Circle())
                    .padding(.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                }
            }
            .navigationBarTitle("Athkar")
        }
    }
}

struct ThekrAssignment_Previews: PreviewProvider {
    static var previews: some View {
        ThekrAssignment()
    }
}
