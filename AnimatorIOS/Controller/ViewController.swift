import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.borderColor = UIColor.clear.cgColor
        cardView.layer.borderWidth = 0.5
        cardView.layer.cornerRadius = 10
        
    }

    @IBAction func onRotatePressed(_ sender: UIButton) {
    }
    
    @IBAction func onFlipLeftPressed(_ sender: UIButton) {
    }
    
    @IBAction func onFadePressed(_ sender: UIButton) {
    }
    
    @IBAction func onFlipRightPressed(_ sender: UIButton) {
    }
    
    

}

