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
        
        VStack{
            Text(singer.stageName)
            Text(singer.birthname)
            Text(singer.birthplace)
            Text(singer.genres)
            Text(singer.fact)
            MapView(coordinate: singer.locationCoordinate2D)
                .frame(height: 200)
        }
        
    }
    
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(singer: Singer.sampleData )
    }
}
