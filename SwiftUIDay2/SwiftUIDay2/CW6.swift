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
                NavigationLink(destination: Image(uiImage: #imageLiteral(resourceName: "Inglourious Basterds"))) {
                     MovieRow(movieName: "Inglourious Basterds", mainCharacters: ["Aldo Raine", "Hans Landa", "Donny"])
                }
                NavigationLink(destination: Image(uiImage: #imageLiteral(resourceName: "Shutter Island"))) {
                     MovieRow(movieName: "Shutter Island", mainCharacters: ["Teddy Daniels", "Chuck Aule", "Dr. Cawley"])
                }
                NavigationLink(destination: Image(uiImage: #imageLiteral(resourceName: "Inception"))) {
                     MovieRow(movieName: "Inception", mainCharacters: ["Dom Cobb", "Ariadne", "Mal Cobb"])
                }
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
