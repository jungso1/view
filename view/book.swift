//
//  book.swift
//  view
//
//  Created by 정소연 on 2018. 7. 27..
//  Copyright © 2018년 정소연. All rights reserved.
//

import Foundation
import UIKit

class Book {
    var title : String
    var wirter : String
    var coverImage : UIImage?
    // coverimgae가 손상될 가능성
    
    init(title:String, wirter:String, coverImage: UIImage?) {
        self.title = title
        self.wirter = wirter
        self.coverImage = coverImage
        
    }

    
}
