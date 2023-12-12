//
//  MessageView.swift
//  DogGramApp
//
//  Created by Weiqi on 12/11/23.
//

import SwiftUI

struct MessageView: View {
    
    @State var comment: CommentModel
    
    var body: some View {
        HStack {
            
            // MARK: PROFILE IMAGE
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 40, height: 40, alignment: .center)
                .cornerRadius(20)
            
            VStack(alignment: .leading, spacing: 4, content: {
                
                // MARK: USER NAME
                Text(comment.username)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                // MARK: CONTENT
                Text(comment.content)
                    .padding(.all, 10)
                    .foregroundColor(.primary)
                    .background(Color.gray)
                    .cornerRadius(10)
                
            })
            
            Spacer(minLength: 0)
            
        }
    }
}

struct MessageView_Previews: PreviewProvider {
    
    static var comment: CommentModel = CommentModel(commentID: "", userID: "", username: "Joe Green", content: "This photo is really cool. haha", dateCreated: Date())
    
    static var previews: some View {
        MessageView(comment: comment)
            .previewLayout(.sizeThatFits)
    }
}
