
import UIKit
import AVFoundation

class HeiwaViewController: UIViewController {
    
    @IBOutlet weak var heiwaCourse: UIImageView!
        
        @IBOutlet weak var heiwaCourseTimer: UILabel!
    
        var player:AVAudioPlayer?
        
        var timer: Timer!
        
        var timer_sec: Float = 0
        
        var counter:Int = 0
        
        let picture = UIImage(named: "stopimage")
        let picture2 = UIImage(named: "startimage")
    
    var imageArray:[UIImage] = [
            UIImage(named: "image1.1")!,
            UIImage(named: "image1.2")!,
            UIImage(named: "image1.3")!,
            UIImage(named: "image1.4")!,
            UIImage(named: "image1.5")!,
            UIImage(named: "image1.6")!,
            UIImage(named: "image1.7")!,
            UIImage(named: "image1.8")!,
            UIImage(named: "image1.9")!,
            UIImage(named: "image1.10")!,
            UIImage(named: "image1.11")!,
            UIImage(named: "image1.12")!,
            UIImage(named: "image1.13")!,
            UIImage(named: "image1.14")!,
            UIImage(named: "image1.15")!,
            UIImage(named: "image1.16")!,
            UIImage(named: "image1.17")!,
            UIImage(named: "image1.18")!,
            UIImage(named: "image1.19")!,
            UIImage(named: "image1.20")!,
            UIImage(named: "image1.21")!,
            UIImage(named: "image1.22")!,
            UIImage(named: "image1.23")!,
            UIImage(named: "image1.24")!,
            UIImage(named: "image1.25")!,
            UIImage(named: "image1.26")!,
            UIImage(named: "image1.27")!,
            UIImage(named: "image1.28")!,
            UIImage(named: "image1.29")!,
            UIImage(named: "image1.30")!,
            UIImage(named: "image1.31")!,
            UIImage(named: "image1.32")!,
            UIImage(named: "image1.33")!,
            UIImage(named: "image1.34")!,
            UIImage(named: "image1.35")!,
            UIImage(named: "image1.36")!,
            UIImage(named: "image1.37")!,
            UIImage(named: "image1.38")!,
            UIImage(named: "image1.39")!,
            UIImage(named: "image1.40")!,
            UIImage(named: "image1.41")!,
            UIImage(named: "image1.42")!,
            UIImage(named: "image1.43")!,
            UIImage(named: "image1.44")!,
            UIImage(named: "image1.45")!,
            UIImage(named: "image1.46")!,
        ]
    
        @IBOutlet weak var startButton: UIButton!
        
        

    override func viewDidLoad() {
        super.viewDidLoad()

        self.heiwaCourse.image = imageArray[0]
               
               heiwaCourseTimer.font = UIFont.init(name: "DBLCDTempBlack", size: 100 )
}
    
    @IBAction func back(_ sender: Any) {
            
            dismiss(animated: true, completion: nil)
            
        }
        
        @objc func updateTimer(_ timer: Timer) {
            self.timer_sec += 0.01

               counter = counter + 1
               // 現在用意している画像は3枚なので、カウンターが2より大きくなったら0にする
               if ( counter > 45 ) {
                   counter = 0
               }
               if ( counter == 0 ) {
                   self.heiwaCourse.image = imageArray[0]
                   // カウンターが0の場合はimageName1の画像を表示する
               }
               else if ( counter == 1 ) {
                   self.heiwaCourse.image = imageArray[1]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 2 ) {
                   self.heiwaCourse.image = imageArray[2]
                   // カウンターが2の場合はimageName3の画像を表示する
               }
               else if ( counter == 3 ) {
                   self.heiwaCourse.image = imageArray[3]
               }
               else if ( counter == 4 ) {
                   self.heiwaCourse.image = imageArray[4]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 5 ) {
                   self.heiwaCourse.image = imageArray[5]
                   
               }
               else if ( counter == 6 ) {
                   self.heiwaCourse.image = imageArray[6]
               }
               else if ( counter == 7 ) {
                   self.heiwaCourse.image = imageArray[7]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 8 ) {
                   self.heiwaCourse.image = imageArray[8]
                   
               }
               else if ( counter == 9 ) {
                   self.heiwaCourse.image = imageArray[9]
               }
               else if ( counter == 10 ) {
                   self.heiwaCourse.image = imageArray[10]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 11 ) {
                   self.heiwaCourse.image = imageArray[11]
                   
               }
               else if ( counter == 12 ) {
                   self.heiwaCourse.image = imageArray[12]
               }
               else if ( counter == 13 ) {
                   self.heiwaCourse.image = imageArray[13]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 14 ) {
                   self.heiwaCourse.image = imageArray[14]
                   
               }
               else if ( counter == 15 ) {
                   self.heiwaCourse.image = imageArray[15]
               }
               else if ( counter == 16 ) {
                   self.heiwaCourse.image = imageArray[16]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 17 ) {
                   self.heiwaCourse.image = imageArray[17]
                   
               }
               else if ( counter == 18 ) {
                   self.heiwaCourse.image = imageArray[18]
               }
               else if ( counter == 19 ) {
                   self.heiwaCourse.image = imageArray[19]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 20 ) {
                   self.heiwaCourse.image = imageArray[20]
                   
               }
               else if ( counter == 21 ) {
                   self.heiwaCourse.image = imageArray[21]
               }
               else if ( counter == 22 ) {
                   self.heiwaCourse.image = imageArray[22]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 23 ) {
                   self.heiwaCourse.image = imageArray[23]
                   
               }
               else if ( counter == 24 ) {
                   self.heiwaCourse.image = imageArray[24]
               }
               else if ( counter == 25 ) {
                   self.heiwaCourse.image = imageArray[25]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 26 ) {
                   self.heiwaCourse.image = imageArray[26]
                   
               }
               else if ( counter == 27 ) {
                   self.heiwaCourse.image = imageArray[27]
               }
               else if ( counter == 28 ) {
                   self.heiwaCourse.image = imageArray[28]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 29 ) {
                   self.heiwaCourse.image = imageArray[29]
                   
               }
               else if ( counter == 30 ) {
                   self.heiwaCourse.image = imageArray[30]
               }
               else if ( counter == 31 ) {
                   self.heiwaCourse.image = imageArray[31]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 32 ) {
                   self.heiwaCourse.image = imageArray[32]
                   
               }
               else if ( counter == 33 ) {
                   self.heiwaCourse.image = imageArray[33]
               }
               else if ( counter == 34 ) {
                   self.heiwaCourse.image = imageArray[34]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 35 ) {
                   self.heiwaCourse.image = imageArray[35]
                   
               }
               else if ( counter == 36 ) {
                   self.heiwaCourse.image = imageArray[36]
               }
               else if ( counter == 37 ) {
                   self.heiwaCourse.image = imageArray[37]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 38 ) {
                   self.heiwaCourse.image = imageArray[38]
                   
               }
               else if ( counter == 39 ) {
                   self.heiwaCourse.image = imageArray[39]
               }
               else if ( counter == 40 ) {
                self.heiwaCourse.image = imageArray[40]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 41 ) {
                   self.heiwaCourse.image = imageArray[41]
                   
               }
               else if ( counter == 42 ) {
                   self.heiwaCourse.image = imageArray[42]
               }
               else if ( counter == 43 ) {
                   self.heiwaCourse.image = imageArray[43]
                   // カウンターが1の場合はimageName2の画像を表示する
               }
               else if ( counter == 44 ) {
                   self.heiwaCourse.image = imageArray[44]
                   
               }
               else if ( counter == 45 ) {
                   self.heiwaCourse.image = imageArray[45]
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
            heiwaCourseTimer.text = "01:00"
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
            heiwaCourseTimer.text = "03:00"
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
            heiwaCourseTimer.text = "10:00"
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
            
                //NSLog(@"タイマー表示");
            
                // 時間書式の設定
                let df:DateFormatter = DateFormatter()
                df.dateFormat = "mm:ss"
                
            
                // 基準日時の設定 ３分を日付型に変換
            let dt:Date = df.date(from: heiwaCourseTimer.text!)! as Date
                
           
                // カウントダウン
            var dt02 = Date(timeInterval: -1.0, since: dt as Date)
                
            self.heiwaCourseTimer.text = df.string(from: dt02 as Date)
         
                // 終了判定 3分が00:00になったら isEqualToString:文字の比較
                if self.heiwaCourseTimer.text == "00:00" {
                
                    if self.timer != nil {
                                self.timer.invalidate()
                        // タイマーを停止する
                        playSound()
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
