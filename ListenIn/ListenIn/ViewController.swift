//
//  ViewController.swift
//  ListenIn
//
//  Created by Charlithia Palmer on 6/24/20.
//  Copyright © 2020 Four in One Telecommunications. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var table: UITableView!
    var songs = [Song]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSongs()
        table.delegate = self
        table.dataSource = self
        
    }
    
    func configureSongs() {
        songs.append(Song(name: "Indigo",
                          albumName: "Indigo",
                          artistName: "Chris Brown",
                          imageName:  "Chris Brown",
                          trackName: "song1"))
              
        songs.append(Song(name: "No TV",
                          albumName: "No Face No Case",
                          artistName: "2 Chainz",
                          imageName:  "2 Chainz",
                          trackName: "song2"))
        
        songs.append(Song(name: "Bank Account",
                          albumName: "Bank Account",
                          artistName: "21 Savage",
                          imageName:  "21 Savage",
                          trackName: "song3"))
        
        songs.append(Song(name: "I Decided",
                          albumName: "Bounce Back",
                          artistName: "Big Sean",
                          imageName:  "Big Sean",
                          trackName: "song2"))
        
      
        songs.append(Song(name: "MotorSport",
                          albumName: "MotorSport",
                          artistName: "Cardi B",
                          imageName:  "Cardi B",
                          trackName: "song2"))
        
        songs.append(Song(name: "I'm the One",
                          albumName: "I'm the One",
                          artistName: "Chance the Rapper",
                          imageName:  "Chance the Rapper",
                          trackName: "song2"))
        
        songs.append(Song(name: "I Got the Keys",
                          albumName: "I Got the Keys",
                          artistName: "Dj Khaled",
                          imageName:  "Dj Khaled",
                          trackName: "song2"))
        
        songs.append(Song(name: "Money in the Grave",
                          albumName: "Money in the Grave",
                          artistName: "Drake",
                          imageName:  "Drake",
                          trackName: "song2"))
        
        songs.append(Song(name: "Close",
                          albumName: "Trip",
                          artistName: "Ella Mai",
                          imageName:  "Ella Mai",
                          trackName: "song2"))
        
        songs.append(Song(name: "No Dayz Off",
                          albumName: "679",
                          artistName: "Fetty Wap",
                          imageName:  "Fetty Wap",
                          trackName: "song2"))
        
        songs.append(Song(name: "Hard To Choose One",
                          albumName: "High Off Life",
                          artistName: "Future",
                          imageName:  "Future",
                          trackName: "song2"))
        
        songs.append(Song(name: "Still Remember",
                          albumName: "Still Remember",
                          artistName: "Gucci Mane",
                          imageName:  "Gucci Mane",
                          trackName: "song2"))
        
        songs.append(Song(name: "Snow On Tha Bluff",
                          albumName: "Snow On Tha Bluff",
                          artistName: "J. Cole",
                          imageName:  "J. Cole",
                          trackName: "song2"))
        
        songs.append(Song(name: "The Making of Eleven",
                          albumName: "The Making of Eleven",
                          artistName: "Khalid",
                          imageName:  "Khalid",
                          trackName: "song2"))
        
        songs.append(Song(name: "The Bigger Picture",
                          albumName: "The Bigger Picture",
                          artistName: "Lil Baby",
                          imageName:  "Lil Baby",
                          trackName: "song2"))
        
        songs.append(Song(name: "Handle It",
                          albumName: "Handle It",
                          artistName: "Ann Marie",
                          imageName:  "Ann Marie",
                          trackName: "Handle-It"))
    }
    
    // Table
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let song = songs[indexPath.row]
        
        // Configure
        cell.textLabel?.text = song.name
        cell.detailTextLabel?.text = song.albumName
        cell.accessoryType = .disclosureIndicator
        cell.imageView?.image = UIImage(named: song.imageName)
        cell.textLabel?.font = UIFont(name: "Helvetica-Bold",  size: 18)
        cell.detailTextLabel?.font = UIFont(name: "Helvetica", size: 17)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 69
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        // present the player
        let position = indexPath.row
        
        // songs
        
        guard let vc =  storyboard?.instantiateViewController(identifier: "player") as? PlayerViewController else {
            return
        }
        vc.songs = songs
        vc.position = position
        present(vc, animated: true)
    }
    
}
    
    struct Song {
        let name: String
        let albumName: String
        let artistName: String
        let imageName: String
        let trackName: String
        

}


