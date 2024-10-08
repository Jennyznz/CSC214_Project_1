//
//  ContentView.swift
//  MemeGenerator
//
//  Created by Zheng, Jenny on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var generator = Generator()
    @State private var memeCount = 0
    @State private var aMeme: (image: String, text: String)? = nil
    
    var body: some View {
        NavigationView{
            VStack {
                Image(systemName: "AppIcon")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Since launch you've generated \(memeCount) memes")
                    .padding(20)
                
                Button(action: {
                    // Shuffle to generate unique memes
                    generator.makeMemes()
                    aMeme = generator.memes.randomElement()
                    memeCount += 1
                }) {
                    Text("Generate")
                }
                .padding(20)
                
                // If aMeme is not nil,
                if let meme = aMeme {
                    NavigationLink(destination: MemeView(image: meme.image, text: meme.text)) {
                        Text("View Meme")
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
