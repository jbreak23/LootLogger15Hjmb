//
//  ImageStore.swift
//  LootLoggerRB
//
//  Created by Jon on 11/5/25.
//

import Foundation

import UIKit

class ImageStore {

    let cache = NSCache<NSString,UIImage>()
    
    func setImage(_ image: UIImage, forKey key: String) {
            cache.setObject(image, forKey: key as NSString)
        }

        func image(forKey key: String) -> UIImage? {
            return cache.object(forKey: key as NSString)
        }

        func deleteImage(forKey key: String) {
            cache.removeObject(forKey: key as NSString)
        }

}
