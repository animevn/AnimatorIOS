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
                             animations: {
                                cardImage.image = UIImage(named: self.card.image)})
    }
    
    func fade(cardImage:UIImageView){
        
        UIView.animate(withDuration: 1, animations: {
            cardImage.alpha = 0
        }, completion: {_ in
            cardImage.image = UIImage(named: self.card.image)
                UIView.animate(withDuration: 1, animations: {cardImage.alpha = 1})
        })
    }
    
    
}
