//
//  PostData.swift
//  H4X0R News
//
//  Created by Juan Diego Ocampo on 02/12/2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String?
}
