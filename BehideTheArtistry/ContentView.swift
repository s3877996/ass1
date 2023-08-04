//
//  ContentView.swift
//  BehideTheArtistry
//
//  Created by Hien Nguyen Minh on 04/08/2023.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented: Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                ZStack (alignment:.top){
                    Color.clear
            
                    //color mint background
                    Image("Rectangle 4")
                    .frame(width: 393, height: 600)
                    .background(Color(red: 0.71, green: 0.91, blue: 0.82))
                    
                    //image
                    VStack (alignment: .center){
                        Spacer()
                        Image("Ellipse 1")
                        .frame(width: 302.30768, height: 300)
                        .background(
                          Image("Ellipse 1")
                            .resizable(resizingMode: .tile)
                        )
                        
                        
                        Text("Behind the Artistry")
                          .font(
                            Font.custom("Manrope", size: 24)
                              .weight(.heavy)
                          )
                          .foregroundColor(.black)
                          
                        Spacer()
                        
                        Button {
                            isPresented.toggle()
                        } label: {
                            Image(systemName: "info.circle").frame(maxWidth: .infinity, alignment: .trailing).foregroundColor(.red)
                        }
                    }
                    .padding()
                    .alert(isPresented: $isPresented) {
                        Alert(title: Text("Student Name: Hien Nguyen"), message: Text("Student ID: s3877996"), dismissButton: .default(Text("Ok")))
                        
                    }
                    
                    
                }
                
                //white background bottom
                VStack{
                    Text("WELCOME")
                      .font(
                        Font.custom("Manrope", size: 24)
                          .weight(.heavy)
                      )
                      .foregroundColor(.black)
                      .frame(width: 126, height: 35, alignment: .topLeading)
                    
                    Text("Explore, Engage, Enjoy")
                      .font(
                        Font.custom("Manrope", size: 24)
                          .weight(.semibold)
                      )
                      .foregroundColor(.black)
                    
                    
                    NavigationLink {ListView()
                        
                    } label: {
                            Text("GET STARTED")
                            .frame(width: 260, height: 52)
                            .background(.black)
                            .cornerRadius(15)
                            .foregroundColor(.white)
                    }



                }
                    .background(.white)
                    .frame(width: .infinity,height: 252)
                
            }
        }

    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//Color(red: 0.71, green: 0.91, blue: 0.82)
