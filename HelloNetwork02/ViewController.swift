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
    let start = Date().timeIntervalSince1970
    override func viewDidLoad() {
        super.viewDidLoad()
        
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

