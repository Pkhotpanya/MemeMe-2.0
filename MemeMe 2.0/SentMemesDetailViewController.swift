//
//  SentMemesDetailViewController.swift
//  MemeMe 2.0
//
//  Created by Peter Khotpanya on 10/28/16.
//  Copyright © 2016 Peter Khotpanya. All rights reserved.
//

import UIKit

class SentMemesDetailViewController: UIViewController {
    
    @IBOutlet weak var sentMemesImageView: UIImageView?
    weak var memeImage: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()
        sentMemesImageView?.image = memeImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
