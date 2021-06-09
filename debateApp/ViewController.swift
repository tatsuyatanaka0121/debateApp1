

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    

    
    
    var player:AVAudioPlayer?
    var audioPlayerInstance : AVAudioPlayer! = nil  // 再生するサウンドのインスタンス

    override func viewDidLoad() {
        super.viewDidLoad()
        
       let soundURL = Bundle.main.url(forResource: "BGM", withExtension: "mp3")
        do {
                    player = try AVAudioPlayer(contentsOf: soundURL!)
                    player?.numberOfLoops = -1   // ループ再生する
                    player?.prepareToPlay()      // 即時再生させる
                    player?.play()               // BGMを鳴らす
                } catch {
                    print("error...")
                }
   
        
    }
    
    func playSound() {
           // 再生する音声ファイルを指定する
       let soundURL = Bundle.main.url(forResource: "button", withExtension: "mp3")
           do {
               // 効果音を鳴らす
               player = try AVAudioPlayer(contentsOf: soundURL!)
               player?.play()
           } catch {
               print("error...")
           }
       }
    
    @IBAction func heiwaButton(_ sender: Any) {
        playSound()
        }
    
    @IBAction func normalButton(_ sender: Any) {
        playSound()
        
    }
    
    @IBAction func friendButton(_ sender: Any) {
        playSound()
        
    }
    
    @IBAction func loveButton(_ sender: Any) {
        playSound()
        
    }
    
    @IBAction func allButton(_ sender: Any) {
        playSound()
        
    }
    
    @IBAction func mirrativButton(_ sender: Any) {
        let request =  URL(string: "https://www.mirrativ.com")!
        if UIApplication.shared.canOpenURL(request) {
                    UIApplication.shared.open(request)
    }
        
       

}

}
