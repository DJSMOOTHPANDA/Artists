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
        "1970s Christian Pop Artists": ["2nd Chapter of Acts", "After the Fire", "Dennis Agajanian", "All Saved Freak Band", "The Alpha Band"],
    ]

    // Create a button for each artist in the category
    for artist in artists[category] {
        let button = UIButton()
        button.setTitle(artist, for: .normal)
        buttonLayout.addArrangedSubview(button)
    }
} 
  }
