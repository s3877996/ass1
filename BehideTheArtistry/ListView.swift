//
//  DetailView.swift
//  BehideTheArtistry
//
//  Created by Hien Nguyen Minh on 04/08/2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ForEach(SINGERS, id: \.self) {
                singer in
                NavigationLink(destination: DetailsView(singer: singer)) {
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
