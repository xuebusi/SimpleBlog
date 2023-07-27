//
//  ContentView.swift
//  SimpleBlog
//
//  Created by shiyanjun on 2023/7/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(showsIndicators: false) {
                ForEach(blogs) { blog in
                    CardView(image: blog.image, category: blog.category, heading: blog.heading, author: blog.author)
                }
            }
        }
        .padding()
    }
}

struct CardView: View {
    
    var image: String
    var category: String
    var heading: String
    var author: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                VStack(alignment: .leading) {
                    Text(category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                    Text("Written by ".uppercased() + author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                .layoutPriority(100)
                Spacer()
            }
            .padding()
        }
        .cornerRadius(10)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.2), lineWidth: 1)
        }
        .padding(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
