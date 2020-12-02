//
//  DetailView.swift
//  H4X0R News
//
//  Created by Juan Diego Ocampo on 02/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import SwiftUI

// MARK: -  DetailView

struct DetailView: View {
    /// Tag: Variables
    let url: String?
    var body: some View {
        WebView(urlString: url)
    }
}

// MARK: -  DetailView_Previews

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
