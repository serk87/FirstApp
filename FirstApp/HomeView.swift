//
//  HomeView.swift
//  FirstApp
//
//  Created by luser on 05.06.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "bookmark")
                Spacer()
                Text("Social").font(.title)
                Spacer()
                Image(systemName: "bell")
            }.padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
