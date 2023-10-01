//
//  SonucEkraniVC.swift
//  Sayı Tahmin Uygulaması
//
//  Created by Kadir on 28.09.2023.
//

import UIKit

class SonucEkraniVC: UIViewController {
    
    
    
    @IBOutlet weak var imageViewSonuc: UIImageView!
    
    @IBOutlet weak var labelSonuc: UILabel!
    
    var sonuc:Bool?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sonuc!)

    }
    

    

}
