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
    @IBOutlet weak var containerView: UIView!
    let start = Date().timeIntervalSince1970
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        containerView.clipsToBounds = false
        containerView.backgroundColor = UIColor.clear
        containerView.layer.shadowRadius = 30         //陰影
        containerView.layer.shadowOpacity = 0.9;
        containerView.layer.shadowColor = UIColor.gray.cgColor
        containerView.layer.shadowOffset = CGSize(width: 30, height: 30)
        
        myImageView.clipsToBounds = true
        myImageView.layer.cornerRadius = myImageView.frame.width / 2         //圓角
        myImageView.layer.borderColor = UIColor.red.cgColor //邊線色
        myImageView.layer.borderWidth = 5          //邊線

        
        
        
        
        let urlString = "https://s.yimg.com/ny/api/res/1.2/UBe_uhOfJyDTjWqUBsKh.w--/YXBwaWQ9aGlnaGxhbmRlcjt3PTEyNDI7aD03NzQuMjEyNTk4NDI1MTk2OA--/https://s.yimg.com/uu/api/res/1.2/6hyNAqNpIHFLe.L..WL49Q--~B/aD05NTA7dz0xNTI0O3NtPTE7YXBwaWQ9eXRhY2h5b24-/http://media.zenfs.com/zh-Hant-TW/homerun/nownews.com/b0804bfa09809e880f1acf1fe3c285ba"
        DispatchQueue.global().async {
            if let url = URL(string: urlString){
                do{
                    let data = try Data(contentsOf: url)
                    DispatchQueue.main.async {
                        self.myImageView.image = UIImage(data: data)
                        print(Date().timeIntervalSince1970 - self.start)
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
        }
        

        
        
    }


}

