
import UIKit
import AVFoundation

class LoveViewController: UIViewController {

    @IBOutlet weak var loveCourse: UIImageView!
       
       @IBOutlet weak var loveCourseTimer: UILabel!
    
       var player:AVAudioPlayer?
       
       var timer: Timer!
       
       var timer_sec: Float = 0
       
       var counter:Int = 0
       
       let picture = UIImage(named: "stopimage")
       let picture2 = UIImage(named: "startimage")
       
       @IBOutlet weak var startButton: UIButton!
       
       var imageArray:[UIImage] = [
               UIImage(named: "image4.1")!,
               UIImage(named: "image4.2")!,
               UIImage(named: "image4.3")!,
               UIImage(named: "image4.4")!,
               UIImage(named: "image4.5")!,
               UIImage(named: "image4.6")!,
               UIImage(named: "image4.7")!,
               UIImage(named: "image4.8")!,
               UIImage(named: "image4.9")!,
               UIImage(named: "image4.10")!,
               UIImage(named: "image4.11")!,
               UIImage(named: "image4.12")!,
               UIImage(named: "image4.13")!,
               UIImage(named: "image4.14")!,
               UIImage(named: "image4.15")!,
               UIImage(named: "image4.16")!,
               UIImage(named: "image4.17")!,
               UIImage(named: "image4.18")!,
               UIImage(named: "image4.19")!,
               UIImage(named: "image4.20")!,
               UIImage(named: "image4.21")!,
               UIImage(named: "image4.22")!,
               UIImage(named: "image4.23")!,
               UIImage(named: "image4.24")!,
               UIImage(named: "image4.25")!,
               UIImage(named: "image4.26")!,
               UIImage(named: "image4.27")!,
               UIImage(named: "image4.28")!,
               UIImage(named: "image4.29")!,
               UIImage(named: "image4.30")!,
               UIImage(named: "image4.31")!,
               UIImage(named: "image4.32")!,
               UIImage(named: "image4.33")!,
               UIImage(named: "image4.34")!,
               UIImage(named: "image4.35")!,
               UIImage(named: "image4.36")!,
               UIImage(named: "image4.37")!,
               UIImage(named: "image4.38")!,
               UIImage(named: "image4.39")!,
               UIImage(named: "image4.40")!,
               UIImage(named: "image4.41")!,
               UIImage(named: "image4.42")!,
               UIImage(named: "image4.43")!,
               UIImage(named: "image4.44")!,
               UIImage(named: "image4.45")!,
               UIImage(named: "image4.46")!,
               UIImage(named: "image4.47")!,
               UIImage(named: "image4.48")!,
               UIImage(named: "image4.49")!,
               UIImage(named: "image4.50")!,
    ]

       override func viewDidLoad() {
           super.viewDidLoad()
           
           self.loveCourse.image = imageArray[0]
           
           loveCourseTimer.font = UIFont.init(name: "DBLCDTempBlack", size: 100 )

           // Do any additional setup after loading the view.
       }
       
       
       
       
       @IBAction func back(_ sender: Any) {
           
           dismiss(animated: true, completion: nil)
           
       }
       
       @objc func updateTimer(_ timer: Timer) {
           self.timer_sec += 0.01

              counter = counter + 1
              // 現在用意している画像は3枚なので、カウンターが2より大きくなったら0にする
              if ( counter > 49 ) {
                  counter = 0
              }
              if ( counter == 0 ) {
                  self.loveCourse.image = imageArray[0]
                  // カウンターが0の場合はimageName1の画像を表示する
              }
              else if ( counter == 1 ) {
                  self.loveCourse.image = imageArray[1]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 2 ) {
                  self.loveCourse.image = imageArray[2]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 3 ) {
                  self.loveCourse.image = imageArray[3]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 4 ) {
                  self.loveCourse.image = imageArray[4]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 5 ) {
                  self.loveCourse.image = imageArray[5]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 6 ) {
                  self.loveCourse.image = imageArray[6]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 7 ) {
                  self.loveCourse.image = imageArray[7]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 8 ) {
                  self.loveCourse.image = imageArray[8]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 9 ) {
                  self.loveCourse.image = imageArray[9]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 10 ) {
                  self.loveCourse.image = imageArray[10]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 11 ) {
                  self.loveCourse.image = imageArray[11]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 12 ) {
                  self.loveCourse.image = imageArray[12]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 13 ) {
                  self.loveCourse.image = imageArray[13]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 14 ) {
                  self.loveCourse.image = imageArray[14]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 15 ) {
                  self.loveCourse.image = imageArray[15]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 16 ) {
                  self.loveCourse.image = imageArray[16]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 17 ) {
                  self.loveCourse.image = imageArray[17]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 18 ) {
                  self.loveCourse.image = imageArray[18]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 19 ) {
                  self.loveCourse.image = imageArray[19]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 20 ) {
                  self.loveCourse.image = imageArray[20]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 21 ) {
                  self.loveCourse.image = imageArray[21]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 22 ) {
                  self.loveCourse.image = imageArray[22]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 23 ) {
                  self.loveCourse.image = imageArray[23]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 24 ) {
                  self.loveCourse.image = imageArray[24]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 25 ) {
                  self.loveCourse.image = imageArray[25]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 26 ) {
                  self.loveCourse.image = imageArray[26]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 27 ) {
                  self.loveCourse.image = imageArray[27]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 28 ) {
                  self.loveCourse.image = imageArray[28]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 29 ) {
                  self.loveCourse.image = imageArray[29]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 30 ) {
                  self.loveCourse.image = imageArray[30]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 31 ) {
                  self.loveCourse.image = imageArray[31]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 32 ) {
                  self.loveCourse.image = imageArray[32]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 33 ) {
                  self.loveCourse.image = imageArray[33]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 34 ) {
                  self.loveCourse.image = imageArray[34]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 35 ) {
                  self.loveCourse.image = imageArray[35]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 36 ) {
                  self.loveCourse.image = imageArray[36]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 37 ) {
                  self.loveCourse.image = imageArray[37]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 38 ) {
                  self.loveCourse.image = imageArray[38]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 39 ) {
                  self.loveCourse.image = imageArray[39]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 40 ) {
                  self.loveCourse.image = imageArray[40]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 41 ) {
                  self.loveCourse.image = imageArray[41]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 42 ) {
                  self.loveCourse.image = imageArray[42]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 43 ) {
                  self.loveCourse.image = imageArray[43]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 44 ) {
                  self.loveCourse.image = imageArray[44]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 45 ) {
                  self.loveCourse.image = imageArray[45]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 46 ) {
                  self.loveCourse.image = imageArray[46]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 47 ) {
                  self.loveCourse.image = imageArray[47]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 48 ) {
                  self.loveCourse.image = imageArray[48]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 49 ) {
                  self.loveCourse.image = imageArray[49]
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
           loveCourseTimer.text = "01:00"
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
           loveCourseTimer.text = "03:00"
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
           loveCourseTimer.text = "10:00"
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
           let dt:Date = df.date(from: loveCourseTimer.text!)! as Date
               
          
               // カウントダウン
           var dt02 = Date(timeInterval: -1.0, since: dt as Date)
               
           self.loveCourseTimer.text = df.string(from: dt02 as Date)
        
               // 終了判定 3分が00:00になったら isEqualToString:文字の比較
               if self.loveCourseTimer.text == "00:00" {

                   if self.timer != nil {
                               self.timer.invalidate()   // タイマーを停止する
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
