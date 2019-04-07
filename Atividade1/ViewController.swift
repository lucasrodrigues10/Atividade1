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
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if (motion == .motionShake){
            lblCompartilharFrase.text = "# clique em mim para compartilhar"
        }
    }


    @IBOutlet weak var lblCompartilharFrase: UILabel!
    @IBOutlet weak var lblFuture: UILabel!
    @IBAction func lerFuturo(_ sender: UIButton) {
        // numeros aleatorios
        let numAleSujeito = Int.random(in: 0 ... 2)
        let numAleVerbo = Int.random(in: 0 ... 2)
        let numAleSubstantivo = Int.random(in: 0 ... 2)
        
        // vetores das frases
        let frasesSujeito:[String] = ["Todos irao ", "Voce vai ", "Seu chefe ira "]
        var frasesVerbo:[String] = ["comer ","acariciar ", "venerar "]
        var frasesSubstantivo:[String] = ["sorvete.", "voce.", "seus amigos."]
        
        // concatena as strings
        let fraseFinal = frasesSujeito[numAleSujeito]+frasesVerbo[numAleVerbo]+frasesSubstantivo[numAleSubstantivo]
        
        // label com a frase final
        lblFuture.numberOfLines = 0
        lblFuture.text = fraseFinal
    }
    
}

