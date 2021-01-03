//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Abdullah Oğuz on 3.01.2021.
//

import UIKit

class imageViewController: UIViewController {
    @IBOutlet weak var landscapeImageView: UIImageView!
    @IBOutlet weak var lanscapeLabel: UILabel!
    var selectedlandscapeImage = UIImage()
    var selectedlandscapreString = ""
        
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        landscapeImageView.image = selectedlandscapeImage
        lanscapeLabel.text = selectedlandscapreString

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
