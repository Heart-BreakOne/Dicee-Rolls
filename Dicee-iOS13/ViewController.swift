
import UIKit

class ViewController: UIViewController {
    
    //Declares outlets
    @IBOutlet weak var diceImageViewOne: UIImageView!
    @IBOutlet weak var diceImageViewTwo: UIImageView!
    
    //Declares an IBAction to the roll button
    @IBAction func rollButton(_ sender: UIButton) {

        //Sets opacity of the image view
        diceImageViewOne.alpha = 1
        diceImageViewTwo.alpha = 1

        /* Opens image picker for easier selection
         let arrayOfImages = #imageLiteral()
         Opens color swatch for easier selection
         let arrayOfColors = UIColor(#colorLiteral())
         */
        //Declares an array of dice images for usage later
        let arrayOfDices = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

        // Sets the image of the first dice image view to one of the random dice images
        diceImageViewOne.image = arrayOfDices[Int(arc4random_uniform(5))]
        // Sets the image of the first dice image view to one of the random dice images
        diceImageViewTwo.image = arrayOfDices[Int.random(in: 0...5)]
        //diceImageViewTwo.image = arrayOfDices[Int.random(in: 0..<6)]
    }
}
