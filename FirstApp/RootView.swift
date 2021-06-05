//
//  RootView.swift
//  FirstApp
//
//  Created by luser on 05.06.2021.
//

import SwiftUI

struct RootView: View {
    @State var page = 1
    var body: some View {
        if page == 1 {
            SignInView(page: $page)
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
