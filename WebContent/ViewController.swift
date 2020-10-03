//
//  ViewController.swift
//  WebContent
//
//  Created by Marcin Magiera on 03/10/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.muzeumpamieci.pl/aktualnosci/")!
        let task = URLSession.shared.dataTask(with: url){
            (data, response, error) in
            
            if(error == nil){
        
                let urlContent = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                print(urlContent)
            }
        }
        task.resume()
        
    }
    



}

