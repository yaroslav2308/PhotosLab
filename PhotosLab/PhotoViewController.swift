//
//  PhotoViewController.swift
//  PhotosLab
//
//  Created by Yaroslav Monastyrev on 03.11.2021.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?
    @IBOutlet weak var flowerImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flowerImageView.image = image
        // Do any additional setup after loading the view.
    }
    
    @IBAction func shareAction(_ sender: UIButton) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = {_, bool, _, _ in
            if bool {
                print("Успешно!")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
    }

}
