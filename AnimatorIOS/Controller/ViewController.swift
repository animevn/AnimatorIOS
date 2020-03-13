import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardImage: UIImageView!
    
    var model = Model()
    
    override func viewWillTransition(to size: CGSize,
                                     with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: {_ in
            let orientation = UIDevice.current.orientation
            if orientation.isLandscape{
                self.stackView.axis = .horizontal
                self.stackView.distribution = .fillEqually
            }
            if orientation.isPortrait{
                self.stackView.axis = .vertical
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cardView.layer.borderColor = UIColor.clear.cgColor
        cardView.layer.borderWidth = 0.5
        cardView.layer.cornerRadius = 10
        cardView.clipsToBounds = true
    }

    @IBAction func onRotatePressed(_ sender: UIButton) {
        model.card.flipCard()
        model.rotate(cardImage: cardImage)
    }
    
    @IBAction func onFlipLeftPressed(_ sender: UIButton) {
        model.card.flipCard()
        model.flipLeft(cardImage: cardImage)
    }
    
    @IBAction func onFadePressed(_ sender: UIButton) {
        model.card.flipCard()
        model.fade(cardImage: cardImage)
    }
    
    @IBAction func onFlipRightPressed(_ sender: UIButton) {
        model.card.flipCard()
        model.flipRight(cardImage: cardImage)
    }
    
    

}

