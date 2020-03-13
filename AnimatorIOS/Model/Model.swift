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
    
    func rotate(cardImage:UIImageView){
        UIView.animate(withDuration: 0.5, delay: 0,
                       options: UIView.AnimationOptions.curveLinear,
                       animations: {
            cardImage.transform = CGAffineTransform(rotationAngle: -CGFloat.pi/2)
            cardImage.alpha = 0.75
        }, completion: {_ in
            UIView.animate(withDuration: 0.5, delay: 0,
                           options: UIView.AnimationOptions.curveLinear,
                           animations: {
                cardImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                cardImage.alpha = 0.5
            }, completion: {_ in
                UIView.animate(withDuration: 0.5, delay: 0,
                               options: UIView.AnimationOptions.curveLinear,
                               animations: {
                    cardImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
                    cardImage.alpha = 0.25
                }, completion: {_ in
                    UIView.animate(withDuration: 0.5, delay: 0,
                                   options: UIView.AnimationOptions.curveLinear,
                                   animations: {
                        cardImage.alpha = 0
                        cardImage.transform = CGAffineTransform(rotationAngle: 0)}, completion: {
                            _ in
                            cardImage.image = UIImage(named: self.card.image)
                            self.rotateRight(cardImage: cardImage)
                    })
                })
            })
        })
    }
    
    func rotateRight(cardImage:UIImageView){
        UIView.animate(withDuration: 0.5, delay: 0,
                       options: UIView.AnimationOptions.curveLinear,
                       animations: {
            cardImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
            cardImage.alpha = 0.25
        }, completion: {_ in
            UIView.animate(withDuration: 0.5, delay: 0,
                           options: UIView.AnimationOptions.curveLinear,
                           animations: {
                cardImage.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                cardImage.alpha = 0.5
            }, completion: {_ in
                UIView.animate(withDuration: 0.5, delay: 0,
                               options: UIView.AnimationOptions.curveLinear,
                               animations: {
                    cardImage.transform = CGAffineTransform(rotationAngle: -CGFloat.pi/2)
                    cardImage.alpha = 0.75
                }, completion: {_ in
                    UIView.animate(withDuration: 0.5, delay: 0,
                                   options: UIView.AnimationOptions.curveLinear,
                                   animations: {
                        cardImage.transform = CGAffineTransform(rotationAngle: 0)})
                        cardImage.alpha = 1
                })
            })
        })
    }
    
}
