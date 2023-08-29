//
//  ViewController.swift
//  syoryuken
//
//  Created by 待寺翼 on 2023/08/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var attackImage: UIImageView!
    
    var imageArrayAttack : Array<UIImage> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        syoryu()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func attackButton(_ sender: Any) {
        attackImage.animationImages = imageArrayAttack
        attackImage.animationDuration = 2
        attackImage.animationRepeatCount = 2
        attackImage.startAnimating()
    }
    func syoryu(){
        while let attackimage = UIImage(named: "attack\(imageArrayAttack.count + 1)"){
            imageArrayAttack.append(attackimage)
        }
    }
}

