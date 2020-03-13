import Foundation

struct Card{
    var state = CardState.Front
    
    var image:String{
        get{
            return state == CardState.Front ? Base.frontImage : Base.backImage
        }
    }
    
    mutating func flipCard(){
        state = state == CardState.Front ? CardState.Back : CardState.Front
    }
}
