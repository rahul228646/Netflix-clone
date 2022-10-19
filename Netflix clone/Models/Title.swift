//
//  Movies.swift
//  Netflix clone
//
//  Created by rahul kaushik on 09/10/22.
//

import Foundation


struct Titles : Codable {
    let results : [TitleModel]
}


struct TitleModel : Codable {
    let id: Int
    let media_type: String?
    let original_name: String?
    let original_title: String?
    let poster_path: String?
    let overview: String?
    let vote_count: Int
    let release_date: String?
    let vote_average: Double
}
