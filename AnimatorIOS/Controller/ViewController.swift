import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardImage: UIImageView!
    
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

