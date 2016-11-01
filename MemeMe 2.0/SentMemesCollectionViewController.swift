//
//  SentMemesCollectionViewController.swift
//  MemeMe 2.0
//
//  Created by Peter Khotpanya on 10/28/16.
//  Copyright © 2016 Peter Khotpanya. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class SentMemesCollectionViewController: UICollectionViewController {

    var memes: [Meme]!
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
        let space: CGFloat = 3.0
        let dimension = (view.frame.size.width - (2 * space)) / 3.0
        
        //Note: This is a sample implementation. You will need to tinker with it to find a layout that works in both landscape and portrait. Hint: consider using view.frame.size.height in addition to view.frame.size.width.
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: dimension, height: dimension)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        collectionView?.reloadData()
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // Configure the cell
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sentMemesCollectionViewCell", for: indexPath) as! SentMemesCollectionViewCell
        let meme = memes[indexPath.item]
        cell.sentMemesImageView.image = meme.memeImage
 
        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if  segue.identifier == "sentMemesDetailViewSegue" {
            if let destination = segue.destination as? SentMemesDetailViewController{
                if let indexPaths = collectionView?.indexPathsForSelectedItems {
                    if let indexPath = indexPaths.first{
                        let meme = memes[indexPath.item]
                        destination.memeImage = meme.memeImage
                    }
                }
            }
            
        } else if segue.identifier == "memeEditorViewSegue" {
            
        }
    }

}
