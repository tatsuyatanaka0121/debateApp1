

import UIKit
import AVFoundation


class NormalViewController: UIViewController {
    
    
    @IBOutlet weak var normalCourse: UIImageView!
    
    @IBOutlet weak var normalCourseTimer: UILabel!
    
    var player:AVAudioPlayer?
    
    var timer: Timer!
    
    var timer_sec: Float = 0
    
    var counter:Int = 0
    
    let picture = UIImage(named: "stopimage")
    let picture2 = UIImage(named: "startimage")
    
    @IBOutlet weak var startButton: UIButton!
    
    var imageArray:[UIImage] = [
            UIImage(named: "image2.1")!,
            UIImage(named: "image2.2")!,
            UIImage(named: "image2.3")!,
            UIImage(named: "image2.4")!,
            UIImage(named: "image2.5")!,
            UIImage(named: "image2.6")!,
            UIImage(named: "image2.7")!,
            UIImage(named: "image2.8")!,
            UIImage(named: "image2.9")!,
            UIImage(named: "image2.10")!,
            UIImage(named: "image2.11")!,
            UIImage(named: "image2.12")!,
            UIImage(named: "image2.13")!,
            UIImage(named: "image2.14")!,
            UIImage(named: "image2.15")!,
            UIImage(named: "image2.16")!,
            UIImage(named: "image2.17")!,
            UIImage(named: "image2.18")!,
            UIImage(named: "image2.19")!,
            UIImage(named: "image2.20")!,
            UIImage(named: "image2.21")!,
            UIImage(named: "image2.22")!,
            UIImage(named: "image2.23")!,
            UIImage(named: "image2.24")!,
            UIImage(named: "image2.25")!,
            UIImage(named: "image2.26")!,
            UIImage(named: "image2.27")!,
            UIImage(named: "image2.28")!,
            UIImage(named: "image2.29")!,
            UIImage(named: "image2.30")!,
            UIImage(named: "image2.31")!,
            UIImage(named: "image2.32")!,
            UIImage(named: "image2.33")!,
            UIImage(named: "image2.34")!,
            UIImage(named: "image2.35")!,
            UIImage(named: "image2.36")!,
            UIImage(named: "image2.37")!,
            UIImage(named: "image2.38")!,
            UIImage(named: "image2.39")!,
            UIImage(named: "image2.40")!,
            UIImage(named: "image2.41")!,
            UIImage(named: "image2.42")!,
            UIImage(named: "image2.43")!,
            UIImage(named: "image2.44")!,
            UIImage(named: "image2.45")!,
            UIImage(named: "image2.46")!,
            UIImage(named: "image2.47")!,
            UIImage(named: "image2.48")!,
            UIImage(named: "image2.49")!,
            UIImage(named: "image2.50")!,
            UIImage(named: "image2.51")!,
            UIImage(named: "image2.52")!,
            UIImage(named: "image2.53")!,
            UIImage(named: "image2.54")!,
            UIImage(named: "image2.55")!,
            UIImage(named: "image2.56")!,
            UIImage(named: "image2.57")!,
            UIImage(named: "image2.58")!,
            UIImage(named: "image2.59")!,
            UIImage(named: "image2.60")!,
            UIImage(named: "image2.61")!,
            UIImage(named: "image2.62")!,
            UIImage(named: "image2.63")!,
            UIImage(named: "image2.64")!,
            UIImage(named: "image2.65")!,
            UIImage(named: "image2.66")!,
            UIImage(named: "image2.67")!,
            UIImage(named: "image2.68")!,
            UIImage(named: "image2.69")!,
            UIImage(named: "image2.70")!,
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.normalCourse.image = imageArray[0]
        
        normalCourseTimer.font = UIFont.init(name: "DBLCDTempBlack", size: 100 )

        // Do any additional setup after loading the view.
    }
    
    
    
    
    @IBAction func back(_ sender: Any) {
        
        
        dismiss(animated: true, completion: nil)
        
    }
    
    @objc func updateTimer(_ timer: Timer) {
        self.timer_sec += 0.01

           counter = counter + 1
           // 現在用意している画像は3枚なので、カウンターが2より大きくなったら0にする
           if ( counter > 69 ) {
               counter = 0
           }
           if ( counter == 0 ) {
               self.normalCourse.image = imageArray[0]
               // カウンターが0の場合はimageName1の画像を表示する
           }
           else if ( counter == 1 ) {
               self.normalCourse.image = imageArray[1]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 2 ) {
               self.normalCourse.image = imageArray[2]
               
           }
           else if ( counter == 3 ) {
               self.normalCourse.image = imageArray[3]
           }
           else if ( counter == 4 ) {
               self.normalCourse.image = imageArray[4]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 5 ) {
               self.normalCourse.image = imageArray[5]
               
           }
           else if ( counter == 6 ) {
               self.normalCourse.image = imageArray[6]
           }
           else if ( counter == 7 ) {
               self.normalCourse.image = imageArray[7]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 8 ) {
               self.normalCourse.image = imageArray[8]
               
           }
           else if ( counter == 9 ) {
               self.normalCourse.image = imageArray[9]
           }
           else if ( counter == 10 ) {
               self.normalCourse.image = imageArray[10]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 11 ) {
               self.normalCourse.image = imageArray[11]
               
           }
           else if ( counter == 12 ) {
               self.normalCourse.image = imageArray[12]
           }
           else if ( counter == 13 ) {
               self.normalCourse.image = imageArray[13]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 14 ) {
               self.normalCourse.image = imageArray[14]
               
           }
           else if ( counter == 15 ) {
               self.normalCourse.image = imageArray[15]
           }
           else if ( counter == 16 ) {
               self.normalCourse.image = imageArray[16]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 17 ) {
               self.normalCourse.image = imageArray[17]
               
           }
           else if ( counter == 18 ) {
               self.normalCourse.image = imageArray[18]
           }
           else if ( counter == 19 ) {
               self.normalCourse.image = imageArray[19]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 20 ) {
               self.normalCourse.image = imageArray[20]
               
           }
           else if ( counter == 21 ) {
               self.normalCourse.image = imageArray[21]
           }
           else if ( counter == 22 ) {
               self.normalCourse.image = imageArray[22]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 23 ) {
               self.normalCourse.image = imageArray[23]
               
           }
           else if ( counter == 24 ) {
               self.normalCourse.image = imageArray[24]
           }
           else if ( counter == 25 ) {
               self.normalCourse.image = imageArray[25]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 26 ) {
               self.normalCourse.image = imageArray[26]
               
           }
           else if ( counter == 27 ) {
               self.normalCourse.image = imageArray[27]
           }
           else if ( counter == 28 ) {
               self.normalCourse.image = imageArray[28]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 29 ) {
               self.normalCourse.image = imageArray[29]
               
           }
           else if ( counter == 30 ) {
               self.normalCourse.image = imageArray[30]
           }
           else if ( counter == 31 ) {
               self.normalCourse.image = imageArray[31]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 32 ) {
               self.normalCourse.image = imageArray[32]
               
           }
           else if ( counter == 33 ) {
               self.normalCourse.image = imageArray[33]
           }
           else if ( counter == 34 ) {
               self.normalCourse.image = imageArray[34]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 35 ) {
               self.normalCourse.image = imageArray[35]
               
           }
           else if ( counter == 36 ) {
               self.normalCourse.image = imageArray[36]
           }
           else if ( counter == 37 ) {
               self.normalCourse.image = imageArray[37]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 38 ) {
               self.normalCourse.image = imageArray[38]
               
           }
           else if ( counter == 39 ) {
               self.normalCourse.image = imageArray[39]
           }
           else if ( counter == 40 ) {
               self.normalCourse.image = imageArray[40]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 41 ) {
               self.normalCourse.image = imageArray[41]
               
           }
           else if ( counter == 42 ) {
               self.normalCourse.image = imageArray[42]
           }
           else if ( counter == 43 ) {
               self.normalCourse.image = imageArray[43]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 44 ) {
               self.normalCourse.image = imageArray[44]
               
           }
           else if ( counter == 45 ) {
               self.normalCourse.image = imageArray[45]
           }
           else if ( counter == 46 ) {
               self.normalCourse.image = imageArray[46]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 47 ) {
               self.normalCourse.image = imageArray[47]
               
           }
           else if ( counter == 48 ) {
               self.normalCourse.image = imageArray[48]
           }
           else if ( counter == 49 ) {
               self.normalCourse.image = imageArray[49]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 50 ) {
               self.normalCourse.image = imageArray[50]
               
           }
           else if ( counter == 51 ) {
               self.normalCourse.image = imageArray[51]
           }
           else if ( counter == 52 ) {
               self.normalCourse.image = imageArray[52]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 53 ) {
               self.normalCourse.image = imageArray[53]
               
           }
           else if ( counter == 54 ) {
               self.normalCourse.image = imageArray[54]
           }
           else if ( counter == 55 ) {
               self.normalCourse.image = imageArray[55]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 56 ) {
               self.normalCourse.image = imageArray[56]
               
           }
           else if ( counter == 57 ) {
               self.normalCourse.image = imageArray[57]
           }
           else if ( counter == 58 ) {
               self.normalCourse.image = imageArray[58]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 59 ) {
               self.normalCourse.image = imageArray[59]
               
           }
           else if ( counter == 60 ) {
               self.normalCourse.image = imageArray[60]
           }
           else if ( counter == 61 ) {
               self.normalCourse.image = imageArray[61]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 62 ) {
               self.normalCourse.image = imageArray[62]
               
           }
           else if ( counter == 63 ) {
               self.normalCourse.image = imageArray[63]
           }
           else if ( counter == 64 ) {
               self.normalCourse.image = imageArray[64]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 65 ) {
               self.normalCourse.image = imageArray[65]
               
           }
           else if ( counter == 66 ) {
               self.normalCourse.image = imageArray[66]
           }
           else if ( counter == 67 ) {
               self.normalCourse.image = imageArray[67]
               // カウンターが1の場合はimageName2の画像を表示する
           }
           else if ( counter == 68 ) {
               self.normalCourse.image = imageArray[68]
               
           }
           else if ( counter == 69 ) {
               self.normalCourse.image = imageArray[69]
           }
           else if ( counter == 70 ) {
               self.normalCourse.image = imageArray[70]
               // カウンターが1の場合はimageName2の画像を表示する
           }
       }
    
    func playSound2() {
           // 再生する音声ファイルを指定する
       let soundURL = Bundle.main.url(forResource: "slotStart", withExtension: "mp3")
           do {
               // 効果音を鳴らす
               player = try AVAudioPlayer(contentsOf: soundURL!)
               player?.play()
           } catch {
               print("error...")
           }
       }

    func playSound3() {
           // 再生する音声ファイルを指定する
       let soundURL = Bundle.main.url(forResource: "slotStop", withExtension: "mp3")
           do {
               // 効果音を鳴らす
               player = try AVAudioPlayer(contentsOf: soundURL!)
               player?.play()
           } catch {
               print("error...")
           }
       }

    

    @IBAction func startButton(_ sender: Any) {
        playSound2()
        if (timer == nil){
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
                   startButton.isEnabled = true
            startButton.setImage(picture, for: .normal)
               }
               else {
                playSound3()
                   startButton.isEnabled = true
                   startButton.setImage(picture2, for: .normal)
                   timer.invalidate()
                   timer = nil
                   
               }
           }
    
    @IBAction func minute1Button(_ sender: Any) {
        let minute1: TimeInterval = 60 * 1
        normalCourseTimer.text = "01:00"
        let normalViewController = NormalViewController()
               // タイマー生成、開始 １秒後の実行
               var tmr = Timer()
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(
               timeInterval: 1.0, // 時間間隔
               target: self, // タイマーの実際の処理の場所
                   selector: #selector(normalViewController.tickTimer), // メソッド タイマーの実際の処理
               userInfo: nil,
               repeats: true) // 繰り返し
               tmr.fire()
        }
    }
    
    @IBAction func minute3Button(_ sender: Any) {
        let minute3: TimeInterval = 60 * 3
        normalCourseTimer.text = "03:00"
        let normalViewController = NormalViewController()
               // タイマー生成、開始 １秒後の実行
               var tmr = Timer()
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(
               timeInterval: 1.0, // 時間間隔
               target: self, // タイマーの実際の処理の場所
                   selector: #selector(normalViewController.tickTimer), // メソッド タイマーの実際の処理
               userInfo: nil,
               repeats: true)
            // 繰り返し
               tmr.fire()
        }
        
    }
    
    @IBAction func minute10Button(_ sender: Any) {
        let minute10: TimeInterval = 60 * 10
        normalCourseTimer.text = "10:00"
        let normalViewController = NormalViewController()
               // タイマー生成、開始 １秒後の実行
               var tmr = Timer()
        if self.timer == nil {
            self.timer = Timer.scheduledTimer(
               timeInterval: 1.0, // 時間間隔
               target: self, // タイマーの実際の処理の場所
                   selector: #selector(normalViewController.tickTimer), // メソッド タイマーの実際の処理
               userInfo: nil,
               repeats: true) // 繰り返し
               tmr.fire()
        }
        }
    
    
    
    @objc func tickTimer(timer: Timer) {
        
        
            // 時間書式の設定
            let df:DateFormatter = DateFormatter()
            df.dateFormat = "mm:ss"
            
        print("呼び出されてます")
        print(normalCourseTimer.text!)
            // 基準日時の設定 ３分を日付型に変換
        let dt:Date = df.date(from: normalCourseTimer.text!)! as Date
            
       
            // カウントダウン
        var dt02 = Date(timeInterval: -1.0, since: dt as Date)
            
        self.normalCourseTimer.text = df.string(from: dt02 as Date)
        
       
            // 終了判定 3分が00:00になったら isEqualToString:文字の比較
            if self.normalCourseTimer.text == "00:00" {
                
                if self.timer != nil {
                            self.timer.invalidate()
                    playSound()// タイマーを停止する
                            self.timer = nil          // startTimer() の self.timer == nil で判断するために、 self.timer = nil としておく
                           
                }
}
    }

     func playSound() {
            // 再生する音声ファイルを指定する
        let soundURL = Bundle.main.url(forResource: "sound", withExtension: "mp3")
            do {
                // 効果音を鳴らす
                player = try AVAudioPlayer(contentsOf: soundURL!)
                player?.play()
            } catch {
                print("error...")
            }
        }

}
