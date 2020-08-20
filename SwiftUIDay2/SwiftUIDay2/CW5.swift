//
//  CW5.swift
//  SwiftUIDay2
//
//  Created by Haider Alboloushi on 8/20/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct CW5: View {
    var body: some View {
        List{
            MovieRow(movieName: "Inglourious Basterds", mainCharacters: ["Aldo Raine", "Hans Landa", "Donny"])
            MovieRow(movieName: "Shutter Island", mainCharacters: ["Teddy Daniels", "Chuck", "Dr. Cawley"])
            MovieRow(movieName: "Inception", mainCharacters: ["Dom Cobb", "Ariadne", "Mal Cobb"])
        }
    }
}

struct CW5_Previews: PreviewProvider {
    static var previews: some View {
        CW5()
    }
}

struct MovieRow: View {
    var movieName: String
    var mainCharacters: [String]
    var body: some View {
        HStack(alignment: .center){
            Image(movieName)
                .resizable()
                .scaledToFit()
                .frame(height: 100)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text(movieName)
                    .font(.largeTitle)
                Text(mainCharacters.joined(separator: ", "))
            }
        }
        .padding(.vertical)
    }
}
