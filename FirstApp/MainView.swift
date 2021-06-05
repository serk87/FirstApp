//
//  MainView.swift
//  FirstApp
//
//  Created by luser on 05.06.2021.
//

import SwiftUI

struct MainView: View {
    @Binding var page : Int
    var body: some View {
        Text("Hello, World!")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(page: .constant(1))
    }
}
