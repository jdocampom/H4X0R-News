//
//  ContentView.swift
//  H4X0R News
//
//  Created by Juan Diego Ocampo on 02/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import SwiftUI

// MARK: -  ContentView

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    /// Tag: View
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

// MARK: -  ContentView_Previews

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
