//
//  ViewController.swift
//  TableViewHomeWork
//
//  Created by Сергей Емелин on 27.10.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var plotLabel: UILabel!
    
    @IBOutlet weak var directorLabel: UILabel!
    
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var runTimeLabel: UILabel!
    @IBOutlet weak var mainCastLabel: UILabel!
   
    var movie = Movie()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        directorLabel.text = "Режиссер: " + movie.director
        directorLabel.sizeToFit()
        
        plotLabel.text = "Описание:\n" + movie.plot
        plotLabel.sizeToFit()
       
        imageView.image = UIImage (named: movie.image)
       
        genreLabel.text = "Жанр: " + movie.genre
        genreLabel.sizeToFit()
        
        runTimeLabel.text = "Продолжительность: " + movie.runtime
        runTimeLabel.sizeToFit()
        
        mainCastLabel.text = "В главных ролях: " + movie.mainCast
        mainCastLabel.sizeToFit()
        
    }


}


