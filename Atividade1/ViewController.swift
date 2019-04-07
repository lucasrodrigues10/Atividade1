//
//  ViewController.swift
//  Atividade1
//
//  Created by user153529 on 4/7/19.
//  Copyright © 2019 maua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var lblSorte: UILabel!
    @IBAction func lerSorte(_ sender: UIButton) {
        let numRand = Int.random(in: 0 ... 2)
        var frasesSorte:[String] = ["Nada esta tao ruim que nao possa piorar", "Siga os bons e aprenda com eles", "A maior barreira para o sucesso é o medo do fracasso."]
        lblSorte.numberOfLines = 0
        lblSorte.text = frasesSorte[numRand]
    }
    
}

