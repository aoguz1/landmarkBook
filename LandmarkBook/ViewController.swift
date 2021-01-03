//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Abdullah Oğuz on 2.01.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate ,UITableViewDataSource {

    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var choseLandmarkName = String()
    var choseLandmarkImage = UIImage()
    
    @IBOutlet weak var mytableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        mytableView.delegate = self
        mytableView.dataSource = self
        
        // names
        landmarkNames.append("Galata")
        landmarkNames.append("Eyfel")
        landmarkNames.append("Kremlin")
        landmarkNames.append("Pamukkale")
        landmarkNames.append("Stonehedge")
        landmarkNames.append("Great Wall")
        landmarkNames.append("Fuji")
        landmarkNames.append("Collessium")
        
        // images
        landmarkImages.append(UIImage(named: "galata.jpg")!)
        landmarkImages.append(UIImage(named: "eyfel.jpg")!)
        landmarkImages.append(UIImage(named: "kremlin.jpg")!)
        landmarkImages.append(UIImage(named: "pamukkale.jpg")!)
        landmarkImages.append(UIImage(named: "stonehenge.jpg")!)
        landmarkImages.append(UIImage(named: "greatwall.jpg")!)
        landmarkImages.append(UIImage(named: "fuji.jpg")!)
        landmarkImages.append(UIImage(named: "collessium.jpg")!)
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkImages.remove(at: indexPath.row)
            landmarkNames.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController"  {
            let destinationVC = segue.destination as? imageViewController
            destinationVC?.selectedlandscapreString = choseLandmarkName
            destinationVC?.selectedlandscapeImage = choseLandmarkImage
            
        }
    }

  
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        choseLandmarkImage = landmarkImages[indexPath.row]
        choseLandmarkName = landmarkNames[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
        
    }
    
    
    
    
    
    


}

