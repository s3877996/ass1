//
//  DetailsView.swift
//  BehideTheArtistry
//
//  Created by Hien Nguyen Minh on 04/08/2023.
//

//
//  DetailsView.swift
//  BehideTheArtistry
//
//  Created by Hien Nguyen Minh on 04/08/2023.
//

import SwiftUI

struct DetailsView: View {
    var singer:Singer
    
    var body: some View {
        
        VStack {
            ZStack(alignment: .top){
                Color.clear
                
                //var imageURL = singer.externalUrls.image
                
                // Display an image from a URL
                if   let imageURL = URL(string: singer.externalUrls.image) {
                    AsyncImage(url: imageURL) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                } else {
                    Text("Image URL not found")
                }
                
                
            }
            .frame(width: 340)
            
            VStack(alignment: .leading) {
                Text("Information").font(.headline)
                Spacer()
                Text("Stage Name: " + singer.stageName)
                    .font(
                        Font.custom("Manrope", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0, green: 0.49, blue: 0.29))
                Spacer()
                Text("Birthplace name : " + singer.birthplace)
                    .font(
                        Font.custom("Manrope", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0, green: 0.49, blue: 0.29))
                
                Spacer()
                Text("Genres: " + singer.genres)
                    .font(
                        Font.custom("Manrope", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0, green: 0.49, blue: 0.29))
                Spacer()
                Text("Fun facts: " + singer.fact + "\n").fixedSize(horizontal: false, vertical: false)
                    .font(
                        Font.custom("Manrope", size: 16)
                            .weight(.bold)
                    )
                    .foregroundColor(Color(red: 0, green: 0.49, blue: 0.29))
                Spacer()
            }.frame(width: 340)
            
            MapView(coordinate: singer.locationCoordinate2D)
                .frame(width: 340,height: 250)
            
            
        }
        
    }
    
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(singer: Singer.sampleData )
    }
}
