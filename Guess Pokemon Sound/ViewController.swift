//
//  ViewController.swift
//  Guess Pokemon Sound
//
//  Created by 紀韋如 on 06/05/2024.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVSpeechSynthesizerDelegate {
    
    //必須放到上面才會發出聲音
    let synthesizer = AVSpeechSynthesizer()
    let synthesizerA = AVSpeechSynthesizer()
    
    
    // 輸入文字、音調速度
    @IBOutlet weak var sayTextField: UITextField!
    @IBOutlet weak var speakRateField: UILabel!
    @IBOutlet weak var speakPitchField: UILabel!
    @IBOutlet weak var rateSlider: UISlider!
    @IBOutlet weak var pitchSlider: UISlider!
    // 播放按鈕
    @IBOutlet weak var talkButton: UIButton!
    // 中英日文
    @IBOutlet weak var languageSegment: UISegmentedControl!
    // 寶可夢按鈕
    
    
    @IBOutlet weak var Pikachu: UIButton!
    @IBOutlet weak var Gengar: UIButton!
    @IBOutlet weak var Rhydon: UIButton!
    @IBOutlet weak var Bulbasaur: UIButton!
    @IBOutlet weak var Charizard: UIButton!
    @IBOutlet weak var Jigglypuff: UIButton!
    @IBOutlet weak var Snorlax: UIButton!
    @IBOutlet weak var Caterpie: UIButton!
    @IBOutlet weak var Squirtle: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 在視圖控制器初始化時初始化 synthesizer
        // 這樣 synthesizer 就只會被創建一次，而不是每次方法調用時都創建
        synthesizer.delegate = self // 設置 synthesizer 的代理為當前視圖控制器
    }
    
    // 音調速度（%.2f 表示要格式化一個浮點數，並且只顯示兩位小數）
    
    @IBAction func changeSlider(_ sender: Any) {
        speakRateField.text = String(format:"%.2f", rateSlider.value)
        speakPitchField.text = String(format:"%.2f", pitchSlider.value)
    }
    
    
    // 播放按鈕 （_sender: UIButton）
    
    @IBAction func SpeakButton(_ sender: UIButton) {
        let utterance = AVSpeechUtterance(string:sayTextField.text!)
        utterance.voice = AVSpeechSynthesisVoice(language: "ja")
        utterance.rate = rateSlider.value // rate slider 的 value
        utterance.pitchMultiplier = pitchSlider.value // pitch slider 的 value
        synthesizer.speak(utterance) // 開始播放
        
    }
    // 動物名稱（日文）
    
    
    
    @IBAction func pokemonTalk(_ sender: UIButton) {
        var pokemonmessage = AVSpeechUtterance()
        // 使用if 製作日文選項：動物按鈕發音
        if languageSegment.selectedSegmentIndex == 0{
            
            // 日文版
            if sender == Pikachu {
                pokemonmessage = AVSpeechUtterance(string:"ピカチュウ")
            }
            if sender == Gengar {
                pokemonmessage = AVSpeechUtterance(string:"ゲンガー")
            }
            if sender == Rhydon {
                pokemonmessage = AVSpeechUtterance(string:"サイドン")
            }
            if sender == Bulbasaur {
                pokemonmessage = AVSpeechUtterance(string:"フシギダネ")
            }
            if sender == Charizard {
                pokemonmessage = AVSpeechUtterance(string:"リザードン")
            }
            if sender == Jigglypuff {
                pokemonmessage = AVSpeechUtterance(string:"プリン")
            }
            if sender == Snorlax {
                pokemonmessage = AVSpeechUtterance(string:"カビゴン")
            }
            if sender == Caterpie {
                pokemonmessage = AVSpeechUtterance(string:"キャタピー")
            }
            if sender == Squirtle {
                pokemonmessage = AVSpeechUtterance(string:"ゼニガメ")
            }
            // 語言設定（發音後面）
            pokemonmessage.voice = AVSpeechSynthesisVoice(language: "ja")
            
            // 英文版
        } else if languageSegment.selectedSegmentIndex == 1{
            
            if sender == Pikachu {
                pokemonmessage = AVSpeechUtterance(string:"Pikachu")
            }
            if sender == Gengar {
                pokemonmessage = AVSpeechUtterance(string:"Gengar")
            }
            if sender == Rhydon {
                pokemonmessage = AVSpeechUtterance(string:"Rhydon")
            }
            if sender == Bulbasaur {
                pokemonmessage = AVSpeechUtterance(string:"Bulbasaur")
            }
            if sender == Charizard {
                pokemonmessage = AVSpeechUtterance(string:"Charizard")
            }
            if sender == Jigglypuff {
                pokemonmessage = AVSpeechUtterance(string:"Jigglypuff")
            }
            if sender == Snorlax {
                pokemonmessage = AVSpeechUtterance(string:"Snorlax ")
            }
            if sender == Caterpie {
                pokemonmessage = AVSpeechUtterance(string:"Caterpie")
            }
            if sender == Squirtle {
                pokemonmessage = AVSpeechUtterance(string:"Squirtle")
            }
            
            
            // 語言設定（發音後面）
            pokemonmessage.voice = AVSpeechSynthesisVoice(language: "en")
            
            // 中文版
        } else {
            if sender == Pikachu {
                pokemonmessage = AVSpeechUtterance(string:"皮卡丘")
            }
            if sender == Gengar {
                pokemonmessage = AVSpeechUtterance(string:"梗鬼")
            }
            if sender == Rhydon {
                pokemonmessage = AVSpeechUtterance(string:"鑽角犀獸")
            }
            if sender == Bulbasaur {
                pokemonmessage = AVSpeechUtterance(string:"妙花種子")
            }
            if sender == Charizard {
                pokemonmessage = AVSpeechUtterance(string:"小噴火龍")
            }
            if sender == Jigglypuff {
                pokemonmessage = AVSpeechUtterance(string:"胖丁")
            }
            if sender == Snorlax {
                pokemonmessage = AVSpeechUtterance(string:"卡比獸")
            }
            if sender == Caterpie {
                pokemonmessage = AVSpeechUtterance(string:"綠毛蟲")
            }
            if sender == Squirtle {
                pokemonmessage = AVSpeechUtterance(string:"傑尼龜")
            }
            // 語言設定（發音後面）
            pokemonmessage.voice = AVSpeechSynthesisVoice(language: "zh-TW")
            
            
        }
        synthesizerA.speak(pokemonmessage)
        // 鍵盤（點空白處）收起
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyBoard))
                       self.view.addGestureRecognizer(tap) // to Replace "TouchesBegan"
            }
            @objc func dismissKeyBoard() {
                    self.view.endEditing(true)
            }
    }

