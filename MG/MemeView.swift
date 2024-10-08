//
//  MemeView.swift
//  MemeGenerator
//
//  Created by Zheng, Jenny on 10/7/24.
//

import Foundation
import SwiftUI

struct MemeView: View {
    var image: String
    var text: String
    
    var body: some View {
        VStack{
            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
                    .clipped()
                    .padding(.top)
                    .overlay(
                        Text(text)
                            .font(.headline)
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                            .multilineTextAlignment(.center)
                            .padding(30)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/),
                        alignment: .bottom
                    )
            }
            Spacer()
                .frame(height: 100)
    
        }
        //.navigationBarHidden(true)
    }
}
