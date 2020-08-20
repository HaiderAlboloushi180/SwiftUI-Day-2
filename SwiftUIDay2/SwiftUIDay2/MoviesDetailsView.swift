//
//  MoviesDetailsView.swift
//  SwiftUIDay2
//
//  Created by Haider Alboloushi on 8/20/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct MoviesDetailsView: View {
    var movieName: String
    var mainCharacters: [String]
    var movieImage: UIImage
    var body: some View {
        ZStack{
            Group{
                Image(movieName)
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }.edgesIgnoringSafeArea(.all)
            
            
            VStack(alignment: .center){
                Image(uiImage: movieImage)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 300)
                    .overlay(Circle().stroke(Color.white, lineWidth: 6))
                   .padding()
                    
                
                    Text(movieName)
                        .font(.system(size: 43))
                        .bold()
                    Text(mainCharacters.joined(separator: ", "))
                        .font(.title)
                        .padding()
                Spacer()
            }
            .padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)

        }
    }
}


struct MoviesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MoviesDetailsView(movieName: "Inglourious Basterds", mainCharacters: ["Aldo Raine", "Hans Landa", "Donny"], movieImage: #imageLiteral(resourceName: "Inglourious Basterds"))
    }
}
