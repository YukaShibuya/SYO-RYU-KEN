//
//  ViewController.swift
//  SYO-RYU-KEN
//
//  Created by 渋谷柚花 on 2020/09/09.
//  Copyright © 2020 渋谷柚花. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//imageViewの紐付け
    @IBOutlet var image: UIImageView!
    
//配列を指定
    var imageArray : Array<UIImage> = []
            
    override func viewDidLoad() {
       super.viewDidLoad()
        image.image = UIImage(named: "attak1")
//画像を配列に格納
        while let attakImage = UIImage(named:"attak\(imageArray.count+1)") {
            imageArray.append(attakImage)
            
            }
        }
    
    @IBAction func moveButton(_ sender: Any) {
        image.animationImages = imageArray
        image.animationDuration = 1
        image.animationRepeatCount = 1
        image.startAnimating()
       
        
    }
        
}
    


