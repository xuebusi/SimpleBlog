//
//  BlogModel.swift
//  SimpleBlog
//
//  Created by shiyanjun on 2023/7/27.
//

import Foundation

struct BlogModel: Identifiable {
    var id = UUID().uuidString
    var image: String
    var category: String
    var heading: String
    var author: String
}

var blogs: [BlogModel] = [
    BlogModel(image: "image01", category: "SwiftUI", heading: "Love and Thunder", author: "Alamgir"),
    BlogModel(image: "image02", category: "SwiftUI", heading: "Beauty of Technology", author: "Alamgir Khan"),
    BlogModel(image: "image03", category: "SwiftUI", heading: "Project for Building the Card UI", author: "Alamgir"),
    BlogModel(image: "image04", category: "SwiftUI", heading: "Blog App UI - SwiftUI", author: "Alamgir KHAN"),
]
