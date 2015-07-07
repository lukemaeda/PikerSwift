//
//  ViewController.swift
//  PikerSwift
//
//  Created by MAEDAHAJIME on 2015/07/07.
//  Copyright (c) 2015年 MAEDA HAJIME. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var lbSelect: UILabel!
    
    @IBOutlet weak var pickerView: UIPickerView!
    
    // 表示データ定数　配列
    let ITEM01:NSArray = ["トヨタ", "ニッサン", "マツダ", "ホンダ", "ミツビシ", "スバル"]
    let ITEM02:NSArray = ["カワサキ", "ヤマハ", "ホンダ", "スズキ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // 設定（コンポーネント数（列数））
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 2
    }
    
    // 設定（行数）
    func pickerView(pickerView: UIPickerView,
        numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return ITEM01.count;  // 1列目の選択肢の数
        }else{
            return ITEM02.count;  // 2列目の選択肢の数
        }
    }
    
    // 設定（文字列データ表示）
    func pickerView(pickerView: UIPickerView,
               titleForRow row: Int,                // 行
        forComponent component: Int) -> String! {   // 列
            
        if(component == 0){
            return ITEM01[row] as! String  // 1列目のrow番目に表示する値
        }else{
            return ITEM02[row] as! String  // 2列目のrow番目に表示する値
        }
    }
    
    // データ選択時
    func pickerView(pickerView: UIPickerView,
              didSelectRow row: Int,     // 行
         inComponent component: Int) {   // 列
        
        // 選択行のインデックスを取得
        var row01:NSInteger = pickerView .selectedRowInComponent(0) // 1列目の行
        var row02:NSInteger = pickerView .selectedRowInComponent(1) // 2列目の行
        
        // 値の表示
        self.lbSelect.text = NSString(format:"%@, %@", "\(ITEM01[row01])","\(ITEM02[row02])") as String
            
    }
}

