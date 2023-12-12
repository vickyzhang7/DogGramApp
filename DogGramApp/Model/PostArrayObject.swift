//
//  PostArrayObject.swift
//  DogGramApp
//
//  Created by Weiqi on 12/11/23.
//

import Foundation

class PostArrayObject: ObservableObject {
    
    @Published var dataArray = [PostModel]()
    
    init() {
    
        print("FETCH FROM DATABASE HERE")
        
        let post1 = PostModel(postID: "", userID: "", username: "Joe Green", caption: "This is a caption.", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post2 = PostModel(postID: "", userID: "", username: "Jessica", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post3 = PostModel(postID: "", userID: "", username: "Emily", caption: "This is a really reallt long caption hahahahahaha.", dateCreated: Date(), likeCount: 0, likedByUser: false)
        let post4 = PostModel(postID: "", userID: "", username: "Christopher", caption: nil, dateCreated: Date(), likeCount: 0, likedByUser: false)

        self.dataArray.append(post1)
        self.dataArray.append(post2)
        self.dataArray.append(post3)
        self.dataArray.append(post4)
    }
    
    /// USED FOR SINGLE POST SELECTION
    init(post: PostModel) {
        self.dataArray.append(post)
    }
    
}

