import UIKit

class ViewController: UIViewController {

@IBOutlet weak var buttonLayout: UIStackView!

override func viewDidLoad() {
    super.viewDidLoad()

    // Create an array of categories
    let categories = ["1970s Christian Pop Artists"]

    // Create a button for each category
    for category in categories {
        let button = UIButton()
        button.setTitle(category, for: .normal)
        button.addTarget(self, action: #selector(categoryButtonTapped(_:)), for: .touchUpInside)
        buttonLayout.addArrangedSubview(button)
    }
}

@objc func categoryButtonTapped(_ sender: UIButton) {
    // Get the category that was tapped
    let category = sender.titleLabel!.text!

    // Create an array of artists for the category
    let artists = [
        "1970s Christian Pop Artists": ["2nd Chapter of Acts" "After the Fire (ATF)" "Dennis Agajanian" "All Saved Freak Band" "The Alpha Band" "The Archers" "a band called David" "Brown Bannister" "Bash-n-the-Code" "Bob Bennett" "Debby Boone" "Pat Boone" "Scott Wesley Brown" "Anita Bryant" "T Bone Burnett" "Wendell Burton" "Steve Camp" "Glen Campbell" "Ralph Carmichael" "Johnny Cash" "Chalice" "Children of the Day" "Chris Christian" "Paul Clark" "Terry Clark" "Cynthia Clawson" "Bruce Cockburn" "Denny Correll" "Andrae Crouch (and the Disciples)" "Andrew Culverwell" "Daniel Amos (a.k.a. DA and da)" "David and the Giants" "Mike Deasy" "DeGarmo and Key" "Dino" "Dion" "Jessy Dixon" "Phil Driscoll" "Roby Duke" "Bob Dylan" "Evie" "Don Francisco" "Aretha Franklin" "Richie Furay" "The Bill Gaither Trio" "Chuck Girard" "Glad" "Glass Harp" "Amy Grant" "Al Green" "Keith Green" "Peter Green" "Arlo Guthrie" "Danniebelle Hall" "Pam Mark Hall" "Larnelle Harris" "Harvest" "Edwin Hawkins (and the Edwin Hawkins Singers)" "Bryn Haworth" "Mark Heard" "Heritage Singers" "Annie Herring" "Benny Hester" "Dallas Holm" "Honeytree" "Jimmy Hotz" "Tom Howard" "Billie Hughes" "The Imperials" "Jerusalem" "JC Power Outlet (band)" "Tonio K." "Kurt Kaiser" "Kansas" "Phil Keaggy" "Dave Kelly[2]" "Debby Kerner" "Lazarus" "Liberation Suite" "Little Richard" "Love Song" "Malcolm and Alwyn" "Darrell Mansfield" "Randy Matthews" "Barry McGuire" "Sister Janet Mead" "Ken Medema" "David Meece" "Mighty Clouds of Joy" "Van Morrison" "Mustard Seed Faith" "Mylon and Holy Smoke" "Larry Norman" "Oak Ridge Boys" "Doug Oldham" "Michael and Stormie Omartian" "Leon Patillo" "Sandi Patty" "Gary S. Paxton" "Dan Peek" "Petra" "Andy Pratt" "Elvis Presley" "Billy Preston" "Pantano Salsbury" "Reba Rambo" "Ray Repp" "Resurrection Band (a.k.a. Rez Band)" "Cliff Richard" "Johnny Rivers" "Austin Roberts" "Seawind" "Shekina Glory" "Tim Sheppard" "B.W. Stevenson" "Randy Stonehill" "Noel Paul Stookey" "Sweet Comfort Band" "Ron Salsbury" "John Michael Talbot" "B.J. Thomas" "Truth" "Tim Sheppard" "Matthew Ward" "Wayne Watson" "The Way" "Kelly Willard" "Lanny Wolfe Trio" "Christine Wyrtzen"],
         "Acid Rock Arthsts": ["13th Floor Elevators", ]        
    ]

    // Create a button for each artist in the category
    for artist in artists[category] {
        let button = UIButton()
        button.setTitle(artist, for: .normal)
        buttonLayout.addArrangedSubview(button)
    }
} 
  }
