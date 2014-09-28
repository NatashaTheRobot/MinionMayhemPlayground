// Playground - noun: a place where people can play

import UIKit

var str = "Hello, Swifters!"

let x = 5
let y = 10

let sum = x + y
let quotient = Double(x)/Double(y)
let product = x * y
let difference = x - y

func helloWorld() {
    println("Hello, World!")
}
helloWorld()
























for i in 1...100 {
    i * 5
}

















let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
myView.layer.borderWidth = 1.0
myView.layer.borderColor = UIColor.redColor().CGColor
myView
myView.backgroundColor = UIColor.purpleColor()

let mySubView = UIView(frame: CGRect(x: 0, y: 0, width: 25, height: 25))
mySubView.backgroundColor = UIColor.yellowColor()
myView.addSubview(mySubView)
























let imageView = UIImageView(frame: CGRect(x: 30, y: 30, width: 40, height: 40))
imageView.contentMode = .ScaleAspectFit

let image = UIImage(named: "Dave")
imageView.image = image

myView.addSubview(imageView)

































class Minion {
    let name: String
    let image: UIImage
    let favoriteActivity: String
    
    init(name: String, favoriteActivity: String) {
        self.name = name
        self.favoriteActivity = favoriteActivity
        self.image = UIImage(named: name)
    }
    
    func description() -> String {
        return "Minion \(name) likes \(favoriteActivity.lowercaseString)"
    }
}

let minionBob = Minion(name: "Bob", favoriteActivity: "Orbiting Earth")
minionBob.description()
minionBob.image












class MinionDataSource: NSObject, UITableViewDataSource {
    
    let minionDetails = ["Bob" : "Orbiing Earth", "Dave" : "Rockets & Missles", "Jerry" : "Playing and hanging out with Stuart (BFF)", "Jorge" : "Making photocipies of his bottom", "Kevin" : "Fixing the Internet", "Mark" : "Singing", "Phil" : "Being kiseed by Agnes", "Stuart" : "Playing & Laughing", "Tim" : "Playing boss"]
    var minions = [Minion]()
    
    override init()  {
        for (minionName, minionFavoriteActivity) in minionDetails {
            let minion = Minion(name: minionName, favoriteActivity: minionFavoriteActivity)
            minions.append(minion)
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return minions.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let row = indexPath.row
        let style = UITableViewCellStyle.Subtitle
        let cell = UITableViewCell(style: style, reuseIdentifier: nil)
        
        let minion = minions[indexPath.row]
        cell.imageView?.image = minion.image
        cell.textLabel?.text = minion.name
        cell.detailTextLabel?.text = "Likes \(minion.favoriteActivity.lowercaseString)"
        
        return cell;
    }
    
}












let minionDataSource = MinionDataSource()
let frame = CGRect(x: 0, y: 0, width: 320, height: 500)
let tableView = UITableView(frame: frame, style: .Plain)
tableView.dataSource = minionDataSource
tableView.reloadData()


