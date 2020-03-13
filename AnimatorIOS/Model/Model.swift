import UIKit

struct Model{
    
    var card = Card()
    
    func flipLeft(cardImage:UIImageView){
        UIView.transition(with: cardImage, duration: 2,
                          options: .transitionFlipFromLeft,
                          animations: {cardImage.image = UIImage(named: self.card.image)})
    }
    
    func flipRight(cardImage:UIImageView){
           UIView.transition(with: cardImage, duration: 2,
                             options: .transitionFlipFromRight,
                             animations: {cardImage.image = UIImage(named: self.card.image)})
       }
    
    
}
