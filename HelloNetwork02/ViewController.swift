//
//  ViewController.swift
//  HelloNetwork02
//
//  Created by 申潤五 on 2019/12/7.
//  Copyright © 2019 申潤五. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://pgw.udn.com.tw/gw/photo.php?u=https://uc.udn.com.tw/photo/2019/07/27/4/6617338.jpg"
        if let url = URL(string: urlString){
            do{
                let data = try Data(contentsOf: url)
                myImageView.image = UIImage(data: data)
            }catch{
                print(error.localizedDescription)
            }
            
            
            
        }
        
        
    }


}

