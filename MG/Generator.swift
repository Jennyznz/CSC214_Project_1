//
//  Generator.swift
//  MemeGenerator
//
//  Created by Zheng, Jenny on 10/7/24.
//

import Foundation
import SwiftUI

class Generator: ObservableObject {
    // memes is the only globally accessible variable from this code
    @Published var memes: [(image: String, text: String)] = [];  // Colon is used to explicitly specify array type
    // Immutable arrays for image and text options
    private let images = ["img1", "img2", "img3", "img4", "img5", "img6", "img7", "img8",]
    private let text = [
        // NSLocalizedString retrieves localized Strings based on user location/region
        // Comment left empty because detailed notes for translators are not necessary
        NSLocalizedString("Trying to adult like", comment: ""),
        NSLocalizedString("Me trying to explain my feelings", comment: ""),
        NSLocalizedString("When you spot a friend in a crowd", comment: ""),
        NSLocalizedString("Calculating how much sleep I can get before work", comment: ""),
        NSLocalizedString("Convincing myself to do chores", comment: ""),
        NSLocalizedString("When you find money in your pocket", comment: ""),
        NSLocalizedString("Me trying to remember what I walked into the room for", comment: ""),
        NSLocalizedString("When you thought you were alone", comment: ""),
        NSLocalizedString("When someone steals your food and you catch them", comment: ""),
        NSLocalizedString("When you finally finish your work", comment: "")
    ]
    
    // Initializes an instance of the class
    init() {
        makeMemes();
    }
    
    // Randomly assigns combinations of image and text to memes array
    func makeMemes() {
        
        // Shuffle ordering of images to produce random pairs
        let shuffledImages = images.shuffled();
        
        memes = (0..<8).map { index in
            return (shuffledImages[index], text[index]);
        }
    }
    
}
