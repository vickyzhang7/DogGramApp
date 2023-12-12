//
//  ProfileHeaderView.swift
//  DogGramApp
//
//  Created by Weiqi on 12/11/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    @Binding var profileDisplayName: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 10, content: {
            
            // MARK: PROFILE PICTURE
            Image("dog1")
                .resizable()
                .scaledToFill()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(60)
            
            // MARK: USER NAME
            Text(profileDisplayName)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // MARK: BIO
            Text("Text in here for the bio!")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.center)
            
            
            HStack(alignment: .center, spacing: 20, content: {
                
                // MARK: POSTS
                VStack(alignment: .center, spacing: 5, content: {
                    Text("5")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    
                    Text("Posts")
                        .font(.callout)
                        .fontWeight(.medium)
                })
                
                // MARK: LIKES
                VStack(alignment: .center, spacing: 5, content: {
                    Text("20")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    Capsule()
                        .fill(Color.gray)
                        .frame(width: 20, height: 2, alignment: .center)
                    
                    Text("Likes")
                        .font(.callout)
                        .fontWeight(.medium)
                })
                
            })
            
        })
        .frame(maxWidth: .infinity)
        .padding()
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    
    @State static var name: String = "Joe"
    
    static var previews: some View {
        ProfileHeaderView(profileDisplayName: $name)
            .previewLayout(.sizeThatFits)
    }
}
