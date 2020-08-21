//
//  CW6.swift
//  SwiftUIDay2
//
//  Created by Haider Alboloushi on 8/20/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct CW6: View {
    var body: some View {
        NavigationView{
            List{
                MovieDetails(movieName: "Inglourious Basterds", mainCharacters: ["Aldo Raine", "Hans Landa", "Donyy"], movieImage: #imageLiteral(resourceName: "Inglourious Basterds"))
                MovieDetails(movieName: "Shutter Island", mainCharacters: ["Teddy Daniels", "Chuck", "Dr. Cawley"], movieImage: #imageLiteral(resourceName: "Shutter Island"))
                MovieDetails(movieName: "Inception", mainCharacters: ["Dom Cobb", "Ariadne", "Mal Cobb"], movieImage: #imageLiteral(resourceName: "Inception"))
                MovieDetails(movieName: "Haider", mainCharacters: ["Haider", "Ghazala", "Arshia"], movieImage: #imageLiteral(resourceName: "Haider"))

            }
        .navigationBarTitle("Movies")
        }
    }
}

struct CW6_Previews: PreviewProvider {
    static var previews: some View {
        CW6()
    }
}

struct MovieDetails: View {
    var movieName: String
    var mainCharacters: [String]
    var movieImage: UIImage
    var body: some View {
        NavigationLink(destination: MoviesDetailsView(movieName: movieName, mainCharacters: mainCharacters, movieImage: movieImage)) {
            MovieRow(movieName: movieName, mainCharacters: mainCharacters)
        }
    }
}
