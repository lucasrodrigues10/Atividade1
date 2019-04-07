// 14.00556-5 LUCAS DE MOURA RODRIGUES
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
            lblCompartilharFrase.text = "# clique em compartilhar"
            btnCompartilhar.isHidden = false
        }
    }


    
    @IBOutlet weak var btnCompartilhar: UIButton!
    @IBOutlet weak var lblCompartilharFrase: UILabel!
    @IBOutlet weak var lblFuturo: UILabel!
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
        lblFuturo.numberOfLines = 0
        lblFuturo.text = fraseFinal
    }
    @IBAction func compartilharFraseTwitter(_ sender: Any) {
        // pega o texto
        let textoTweet = lblFuturo.text!
        let fraseCompartilhar = "https://twitter.com/intent/tweet?text=\(textoTweet)"
        
        // cria url
        let url = URL(string: fraseCompartilhar.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!)
        
        // abre o navegador
        UIApplication.shared.openURL(url!)
    }
    
}

