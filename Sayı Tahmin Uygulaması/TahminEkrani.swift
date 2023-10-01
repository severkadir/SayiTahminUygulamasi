//
//  TahminEkrani.swift
//  Sayı Tahmin Uygulaması
//
//  Created by Kadir on 28.09.2023.
//

import UIKit

class TahminEkrani: UIViewController {
    
    
    @IBOutlet weak var labelKalanHak: UILabel!
    @IBOutlet weak var labelYardim: UILabel!
    @IBOutlet weak var textfieldGirdi: UITextField!
    
    var rastgeleSayi:Int?
    var kalanHak = 5
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        rastgeleSayi = Int(arc4random_uniform(100)) //0 - 100
        
        print("Rastgele Sayı : \(rastgeleSayi!)")
        
        
        
    }
    
    @IBAction func tahminet(_ sender: Any) {
        labelYardim.isHidden = false
        kalanHak-=1
        
        if let veri = textfieldGirdi.text {
            
            if let tahmin = Int(veri) {
                
                if kalanHak != 0 {
                    
                    if tahmin == rastgeleSayi! {
                        
                    }
                    
                    if tahmin > rastgeleSayi! {
                        labelYardim.text = "Azalt"
                        labelKalanHak.text = "Kalan Hak : \(kalanHak)"
                    }
                    
                    if tahmin < rastgeleSayi! {
                        labelYardim.text = "Arttır"
                        labelKalanHak.text = "Kalan Hak : \(kalanHak)"                    }
                    
                }else {
                    
                }
                textfieldGirdi.text = ""
                
            }
            
        }
        
    }
    
}
