//
//  ViewController.swift
//  oantuti
//
//  Created by USER on 29/05/2023.
//

import UIKit

enum HandType: String {
    case keo = "scissors"
    case bua = "hold"
    case giay = "hello"
}

enum ResultType {
    case win
    case lose
    case draw
}

class ViewController: UIViewController {
    
  
    @IBOutlet weak var buaImage: UIImageView!
    @IBOutlet weak var giayImage: UIImageView!
    @IBOutlet weak var keoimage: UIImageView!
    
    @IBOutlet weak var buaButton: UIButton!
    @IBOutlet weak var giayButton: UIButton!
    @IBOutlet weak var keoButton: UIButton!
    
    @IBOutlet weak var myletsPlay: UILabel!
    
    @IBOutlet weak var youtImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var youLabel: UILabel!
    @IBOutlet weak var computerLabel: UILabel!
    
    let oantuti = ["hello", "hold", "scissors"]
    
    
    
    override func viewDidLoad() {
        setup()
    }
    
    func setup() {
        buaImage.layer.cornerRadius = self.buaImage.frame.height/2
        buaImage.backgroundColor = .systemYellow
        giayImage.layer.cornerRadius = self.giayImage.frame.height/2
        giayImage.backgroundColor = .systemYellow
        keoimage.layer.cornerRadius = self.keoimage.frame.height/2
        keoimage.backgroundColor = .systemYellow
        
        buaButton.layer.cornerRadius = self.buaButton.frame.height/2
        giayButton.layer.cornerRadius = self.giayButton.frame.height/2
        keoButton.layer.cornerRadius = self.keoButton.frame.height/2
        
        youtImage.layer.cornerRadius = self.youtImage.frame.height/2
        youtImage.backgroundColor = .systemYellow
        
        computerImage.layer.cornerRadius = self.computerImage.frame.height/2
        computerImage.backgroundColor = .systemYellow
        
        resultLabel.isHidden = true
        youtImage.isHidden = true
        computerImage.isHidden = true
        youLabel.isHidden = true
        computerLabel.isHidden = true
    }
    
    func caculatorResult(you: HandType, computer: HandType) -> ResultType {
        if you == .keo {
            if computer == .bua {
                return .lose
            } else if computer == .giay {
                return .win
            }
            return .draw
        }
        if you == .bua {
            if computer == .keo {
                return .win
            } else if computer == .giay {
                return .lose
            }
            return .draw
        }
            if computer == .keo {
                return .lose
            } else if computer == .bua {
                return .win
            }
            return .draw
    }
    

    @IBAction func clickBua(_ sender: UIButton) {
        youtImage.image = UIImage(named: "hold")
        myletsPlay.isHidden = true
        resultLabel.isHidden = false
        youtImage.isHidden = false
        computerImage.isHidden = false
        youLabel.isHidden = false
        computerLabel.isHidden = false
        let currentimages = computerImage.image
        var randomimage = oantuti.randomElement()!
        if currentimages != UIImage(named: randomimage) {
            computerImage.image = UIImage(named: randomimage)!
        }
        let result = caculatorResult(you: HandType.init(rawValue: "hold")!, computer: HandType.init(rawValue: randomimage)!)
        switch result {
        case .lose:
            resultLabel.text = "LOSE"
        case .win:
            resultLabel.text = "WIN"
        case .draw:
            resultLabel.text = "DRAW"
        }
        
    }
    @IBAction func clickGiay(_ sender: UIButton) {
        youtImage.image = UIImage(named: "hello")
        myletsPlay.isHidden = true
        resultLabel.isHidden = false
        youtImage.isHidden = false
        computerImage.isHidden = false
        youLabel.isHidden = false
        computerLabel.isHidden = false
        let currentimages = computerImage.image
        var randomimage = oantuti.randomElement()!
        if currentimages != UIImage(named: randomimage) {
            computerImage.image = UIImage(named: randomimage)!
        }
        let result = caculatorResult(you: HandType.init(rawValue: "hello")!, computer: HandType.init(rawValue: randomimage)!)
        switch result {
        case .lose:
            resultLabel.text = "LOSE"
        case .win:
            resultLabel.text = "WIN"
        case .draw:
            resultLabel.text = "DRAW"
        }
    }
    @IBAction func clickkeo(_ sender: UIButton) {
        youtImage.image = UIImage(named: "scissors")
        myletsPlay.isHidden = true
        resultLabel.isHidden = false
        youtImage.isHidden = false
        computerImage.isHidden = false
        youLabel.isHidden = false
        computerLabel.isHidden = false
        let currentimages = computerImage.image
        var randomimage = oantuti.randomElement()!
        if currentimages != UIImage(named: randomimage) {
            computerImage.image = UIImage(named: randomimage)!
        }
        let result = caculatorResult(you: HandType.init(rawValue: "scissors")!, computer: HandType.init(rawValue: randomimage)!)
        switch result {
        case .lose:
            resultLabel.text = "LOSE"
        case .win:
            resultLabel.text = "WIN"
        case .draw:
            resultLabel.text = "DRAW"
        }
        
    }
    
}
