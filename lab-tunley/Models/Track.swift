//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track{
    let trackName: String
    let artistName: String
    let artworkUrl100: URL
    let collectionName: String
    let primaryGenreName: String
    let releaseDate: String
    let trackTimeMillis: Int
    
    
}

extension Track{
    /// An array of mock tracks
    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(trackName: "Sixty Minutes",//Movie name
              artistName: "Desperate to keep custody of his daughter, a mixed martial arts fighter abandons a big match and races across Berlin to attend her birthday party.",//Description
              artworkUrl100: URL(string:"https://m.media-amazon.com/images/M/MV5BZDIxY2Y2YzQtZjgwNy00YTAzLWE2NDYtYzU5ZjEyMTI4ZTg5XkEyXkFqcGdeQXVyMTEzMTI1Mjk3._V1_.jpg")!,//Photo
             collectionName: "6.939",//Average vote
             primaryGenreName: "1041.037",//Popularity
              releaseDate: "205",//votes
              trackTimeMillis: 1),
        Track(trackName: "Aquaman and the Lost Kingdom",
              artistName: "Still driven by the need to avenge his father's death and wielding the power of the mythic Black Trident, will stop at nothing to take Aquaman down once and for all. To defeat him, Aquaman must turn to his imprisoned brother Orm, the former King of Atlantis, to forge an unlikely alliance in order to save the world from irreversible destruction",
              artworkUrl100: URL(string: "https://s3-ap-southeast-2.amazonaws.com/yc.cldmlk.com/1000000008/1702002682204_HO00001194.jpeg")!,
              collectionName: "6.997",
              primaryGenreName: "1831.771",
              releaseDate: "1337",//2021-05-14T12:00:00Z
               trackTimeMillis: 306257),
        Track(trackName: "Oppenheimer",
              artistName: "The story of J. Robert Oppenheimer's role in the development of the atomic bomb during World War II.",
              artworkUrl100: URL(string: "https://s.yimg.com/ny/api/res/1.2/3JJRZ7O.qYDi5ik1oyrifw--/YXBwaWQ9aGlnaGxhbmRlcjt3PTY0MDtoPTg2Ng--/https://media.zenfs.com/en/total_film_411/0d0f15ca12a964b2143a9a40fea27741")!,
              collectionName: "8.117",
              primaryGenreName: "467.049",
               releaseDate: "6535",//1997-03-01T08:00:00Z
               trackTimeMillis: 230040),
        Track(trackName: "The Bricklayer",
              artistName: "Someone is blackmailing the CIA by assassinating foreign journalists and making it look like the agency is responsible. As the world begins to unite against the U.S., the CIA must lure its most brilliant – and rebellious – operative out of retirement, forcing him to confront his checkered past while unraveling an international conspiracy.",
              artworkUrl100: URL(string: "https://media.themoviedb.org/t/p/w500/pwOQ9lqLX1OgsJRSybS662wMcu8.jpg")!,
              collectionName: "6.164",
              primaryGenreName: "332.084",
               releaseDate: "76",//1997-03-01T08:00:00Z
               trackTimeMillis: 230040),
        Track(trackName: "Migration",
              artistName: "After a migrating duck family alights on their pond with thrilling tales of far-flung places, the Mallard family embarks on a family road trip, from New England, to New York City, to tropical Jamaica.",
              artworkUrl100: URL(string: "https://universalpictures.ca/wp-content/uploads/2023/08/migration_Poster_1920x826-1-2.jpg")!,
              collectionName: "7.743",
              primaryGenreName: "1736.027",
               releaseDate: "472",//1997-03-01T08:00:00Z
               trackTimeMillis: 230040)
    ]
    

        // We can now access this array of mock tracks anywhere like this:
        // let tracks = Tracks.mockTracks
}


// TODO: Pt 1 - Create an extension with a mock tracks static var


// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
