//
//  DetailView.swift
//  BehideTheArtistry
//
//  Created by Hien Nguyen Minh on 04/08/2023.
//

// import SwiftUI

// struct ListView: View {
//     var body: some View {
//         List {
//             ForEach(SINGERS, id: \.self) {
//                 singer in
//                 NavigationLink(destination: DetailsView(singer: singer)) {
//                     Text(singer.birthname)
//                 }
                
//             }
//         }
//     }
// }

// struct ListView_Previews: PreviewProvider {
//     static var previews: some View {
//         NavigationStack {
//             ListView()
//         }
        
//     }
// }

import SwiftUI

struct ListView: View {
    @State private var searchText = ""
    var body: some View {
        
        VStack {
            HStack{
                
                //sort button
                Image("Sort by alpha")
                    .frame(width: 30, height: 30)
                
                //seach bar
                TextField("    Search", text: $searchText)
                    .foregroundColor(.clear)
                    .frame(width: 300, height: 40)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .inset(by: 0.5)
                            .stroke(.black, lineWidth: 1)
                    )
                
                //search button
                Image("Vector")
                    .frame(width: 20, height: 20)
                
                
            }
            List {
                ForEach(SINGERS, id: \.self) {
                    singer in
                    NavigationLink(destination: DetailsView(singer: singer)) {
                        // Display an image from a URL
                        if let imageURL = URL(string: singer.externalUrls.image) {
                            AsyncImage(url: imageURL) { image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                            } placeholder: {
                                ProgressView()
                            }
                        } else {
                            Text("Image URL not found")
                        }
                        Text(singer.birthname)
                    }
                    
                }
            }
        }
    }
    
    struct ListView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack {
                ListView()
            }
            
        }
    }
}
