//
//  FavoriteMoviesViewController.swift
//  TopTenFavBg
//
//  Created by Brian J Glowe on 10/6/15.
//  Copyright © 2015 Brian Glowe. All rights reserved.
//

import UIKit

class FavoriteMoviesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let movies = [
        "You gotta pay the troll toll, if you wanna get into that boy's soul. -Frank", "Mac, you have an exceptional number of bugs in your teeth. You're gonna wanna rinse those out. It's disgusting. -Dennis", "Grain alcohol, baby! Whenever there's a potential riot, I'm getting blasted on grain alcohol. -Mac", "Any amount of cheese before a date is too much cheese. -Dennis", "Smoke some cigarettes. The smoke will suffocate the bacteria in your stomach. -Mac", "Animals should be food, rugs and trophies. Why do you think I'm wearing a leather suit? -Frank", "Do not plug an open wound with trash. -Mac", "Wanna go get sweaty in the bathroom? -Frank", "If you're in my room, you're always being filmed. -Dennis", "I eat stickers all the time, dude! -Charlie"]
    
    let movieTableIdentifier = "MovieTableIdentifier"
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier(movieTableIdentifier) as UITableViewCell!
        
        if(cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: movieTableIdentifier)
        }
        
        cell.textLabel?.text = movies[indexPath.row]
        return cell
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
