//
//  Song.swift
//  DJAZE
//
//  Created by Bo Warren on 4/22/20.
//  Copyright © 2020 DJAZE. All rights reserved.
//

import UIKit

class Song: Codable {
    
    var title: String
    var artist: String
    var upVoteCount: Int
    var downVoteCount: Int
    var aggVote: Int
    
    init(title: String, artist: String, upVoteCount: Int, downVoteCount: Int) {
        self.title = title
        self.artist = artist
        self.upVoteCount = upVoteCount
        self.downVoteCount = downVoteCount
        self.aggVote = upVoteCount - downVoteCount
    }
    
    func voteUp() {
        self.aggVote += 1
    }
    
    func voteDown() {
        self.aggVote -= 1
    }

}
