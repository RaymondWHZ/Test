//
//  ViewController.swift
//  Flashcard
//
//  Created by iD Student on 7/17/17.
//  Copyright © 2017 iD Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate{

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textview: UITextView!
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCardUI()
        // Do any additional setup after loading the view, typically from a nib.
        picker.dataSource=self
        picker.delegate=self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupCardUI() {
        textview.text = CardCollection.instance.currentCard.question
        
        label.text = "Question \(CardCollection.instance.currentIndex + 1)/\(CardCollection.instance.cards.count)"
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return CardCollection.instance.currentCard.options.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return CardCollection.instance.currentCard.options[row]
    }
}

