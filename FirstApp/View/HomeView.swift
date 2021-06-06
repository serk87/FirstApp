//
//  HomeView.swift
//  FirstApp
//
//  Created by luser on 05.06.2021.
//

import SwiftUI

struct HomeView: View {

    @StateObject var movieObject = MovieObject()
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bookmark")
                Spacer()
                Text("Social").font(.title)
                Spacer()
                Image(systemName: "bell")
            }.padding()
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack {
                    ForEach(0...15, id: \.self) { _ in
                        Image("logo")
                            .resizable()
                            .frame(width: 75, height: 75, alignment: .center)
                    }
                }
                .border(Color.black)
            })
            .onAppear {
                MovieObject().getMovies()
            }
            
            Spacer()
        }
        .onAppear {
            movieObject.getMovies()
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
