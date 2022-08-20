//
//  ViewController.swift
//  week2App
//
//  Created by Maureen Chang on 2022/8/19.
//

import UIKit

class ViewController: UIViewController {
    let text=[
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.",
    "Contrary to popular belief, Lorem Ipsum is not simply random text.",
    "Richard McClintock, a Latin professor at Hampden-Sydney College in ",
    "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word",
    "This book is a treatise on the theory of ethics, very popular during the.",
    "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.."
    ]
    
    let color = [#colorLiteral(red: 0.7647058824, green: 0.6470588235, blue: 0.862745098, alpha: 1), #colorLiteral(red: 0.7058823529, green: 0.7921568627, blue: 0.862745098, alpha: 0.4811555976), #colorLiteral(red: 0.7254901961, green: 0.862745098, blue: 0.6666666667, alpha: 1), #colorLiteral(red: 0.8941184878, green: 0.5829805136, blue: 0.7949824929, alpha: 1), #colorLiteral(red: 0.6049793363, green: 0.7391424179, blue: 0.8398131728, alpha: 1), #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1), #colorLiteral(red: 0.7294117647, green: 0.7607843137, blue: 1, alpha: 1)]
    
    var preRandomNum = -1
    
    @IBOutlet weak var changeFunFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!
    
    @IBAction func changeFunFact(_ sender: Any) {
        var randomNum = Int.random(in: 0..<6)
        while randomNum == preRandomNum {
            randomNum = Int.random(in: 0..<6)
        }
        changeContent(randomNum)
        preRandomNum = randomNum
    }
    
    func changeContent(_ randomNum: Int) {
        funFactLabel.text = text[randomNum]
        view.backgroundColor = color[randomNum]
        changeFunFactButton.tintColor = color[randomNum]
        preRandomNum = randomNum
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let randomNum = Int.random(in: 0..<6)
        changeContent(randomNum)
        preRandomNum = randomNum
    }
}
