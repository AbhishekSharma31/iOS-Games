//
//  Track.swift
//  HalfTunes
//
//  Created by Abhishek Sharma on 5/1/16.
//  Copyright © 2016 Ken Toh. All rights reserved.
//
/

class Track {
  var name: String?
  var artist: String?
  var previewUrl: String?
  
  init(name: String?, artist: String?, previewUrl: String?) {
    self.name = name
    self.artist = artist
    self.previewUrl = previewUrl
  }
}