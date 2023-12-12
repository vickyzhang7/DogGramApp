//
//  CommentModel.swift
//  DogGramApp
//
//  Created by Weiqi on 12/11/23.
//

import Foundation
import SwiftUI

struct CommentModel: Identifiable, Hashable {
    
    var id = UUID()
    var commentID: String // ID for the comment in the Database
    var userID: String // ID for the user in the Database
    var username: String // Username for the user in the Database
    var content: String // Actually comment text
    var dateCreated: Date
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
}
