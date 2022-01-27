//
//  FirstNewsViewController.swift
//  MyNews
//
//  Created by Ekaterina Sedova on 27.01.22.
//

import UIKit

class FirstNewsViewController: UIViewController {
    
    var article: Article! // передавать из тейбл и на основании этой переменной заполняем все поля
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageNews: UIImageView!
    
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBAction func openButton(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = article.title
        descriptionLabel.text = article.description
        
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
