//
//  ViewController.swift
//  PickerViewEx1
//
//  Created by Eunchan Kim on 2022/10/25.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let eng = ["A" , "B", "C", "D", "E", "F", "G" ]
        
    let ko = ["가", "나", "다", "라", "마", "바", "사", "아", "자"]
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        picker.delegate = self
        picker.dataSource = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0 {
            return eng.count
        } else {
            return ko.count
        }
    }

//    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
//        if component == 0 {
//            return eng[row]
//        } else {
//            return ko[row]
//        }
//    }
    
    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
        let label1 = UILabel()
        if component == 0{
            label1.text = eng[row]
            label1.backgroundColor = .red
            label1.textAlignment = .center
            label1.font = .systemFont(ofSize: 20, weight: .bold)
        } else {
            label1.text = ko[row]
            label1.backgroundColor = .blue
            label1.textAlignment = .center
            label1.font = .systemFont(ofSize: 20, weight: .bold)
        }
        return label1
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            label.text = eng[row]
        } else {
            label.text = ko[row]
        }
    }
}

