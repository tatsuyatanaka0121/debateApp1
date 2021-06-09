
import UIKit
import AVFoundation

class FriendViewController: UIViewController {

    @IBOutlet weak var friendCourse: UIImageView!
     
     @IBOutlet weak var friendCourseTimer: UILabel!
    
     var player:AVAudioPlayer?
     
     var timer: Timer!
     
     var timer_sec: Float = 0
     
     var counter:Int = 0
     
     let picture = UIImage(named: "stopimage")
     let picture2 = UIImage(named: "startimage")
     
     @IBOutlet weak var startButton: UIButton!
     
     var imageArray:[UIImage] = [
             UIImage(named: "image3.1")!,
             UIImage(named: "image3.2")!,
             UIImage(named: "image3.3")!,
             UIImage(named: "image3.4")!,
             UIImage(named: "image3.5")!,
             UIImage(named: "image3.6")!,
             UIImage(named: "image3.7")!,
             UIImage(named: "image3.8")!,
             UIImage(named: "image3.9")!,
             UIImage(named: "image3.10")!,
             UIImage(named: "image3.11")!,
             UIImage(named: "image3.12")!,
             UIImage(named: "image3.13")!,
             UIImage(named: "image3.14")!,
             UIImage(named: "image3.15")!,
             UIImage(named: "image3.16")!,
             UIImage(named: "image3.17")!,
             UIImage(named: "image3.18")!,
             UIImage(named: "image3.19")!,
             UIImage(named: "image3.20")!,
             UIImage(named: "image3.21")!,
             UIImage(named: "image3.22")!,
             UIImage(named: "image3.23")!,
             UIImage(named: "image3.24")!,
             UIImage(named: "image3.25")!,
             UIImage(named: "image3.26")!,
             UIImage(named: "image3.27")!,
             UIImage(named: "image3.28")!,
             UIImage(named: "image3.29")!,
             UIImage(named: "image3.30")!,
             UIImage(named: "image3.31")!,
             UIImage(named: "image3.32")!,
             UIImage(named: "image3.33")!,
             UIImage(named: "image3.34")!,
             UIImage(named: "image3.35")!,
             UIImage(named: "image3.36")!,
         ]

     override func viewDidLoad() {
         super.viewDidLoad()
         
         self.friendCourse.image = imageArray[0]
         
         friendCourseTimer.font = UIFont.init(name: "DBLCDTempBlack", size: 100 )

         // Do any additional setup after loading the view.
     }
     
     
     
     
     @IBAction func back(_ sender: Any) {
         
         dismiss(animated: true, completion: nil)
         
     }
     
     @objc func updateTimer(_ timer: Timer) {
         self.timer_sec += 0.01

            counter = counter + 1
            // 現在用意している画像は3枚なので、カウンターが2より大きくなったら0にする
            if ( counter > 35 ) {
                counter = 0
            }
            if ( counter == 0 ) {
                self.friendCourse.image = imageArray[0]
                // カウンターが0の場合はimageName1の画像を表示する
            }
            else if ( counter == 1 ) {
                self.friendCourse.image = imageArray[1]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 2 ) {
                self.friendCourse.image = imageArray[2]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 3 ) {
                self.friendCourse.image = imageArray[3]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 4 ) {
                self.friendCourse.image = imageArray[4]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 5 ) {
                self.friendCourse.image = imageArray[5]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 6 ) {
                self.friendCourse.image = imageArray[6]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 7 ) {
                self.friendCourse.image = imageArray[7]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 8 ) {
                self.friendCourse.image = imageArray[8]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 9 ) {
                self.friendCourse.image = imageArray[9]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 10 ) {
                self.friendCourse.image = imageArray[10]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 11 ) {
                self.friendCourse.image = imageArray[11]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 12 ) {
                self.friendCourse.image = imageArray[12]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 13 ) {
                self.friendCourse.image = imageArray[13]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 14 ) {
                self.friendCourse.image = imageArray[14]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 15 ) {
                self.friendCourse.image = imageArray[15]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 16 ) {
                self.friendCourse.image = imageArray[16]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 17 ) {
                self.friendCourse.image = imageArray[17]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 18 ) {
                self.friendCourse.image = imageArray[18]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 19 ) {
                self.friendCourse.image = imageArray[19]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 20 ) {
                self.friendCourse.image = imageArray[20]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 21 ) {
                self.friendCourse.image = imageArray[21]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 22 ) {
                self.friendCourse.image = imageArray[22]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 23 ) {
                self.friendCourse.image = imageArray[23]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 24 ) {
                self.friendCourse.image = imageArray[24]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 25 ) {
                self.friendCourse.image = imageArray[25]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 26 ) {
                self.friendCourse.image = imageArray[26]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 27 ) {
                self.friendCourse.image = imageArray[27]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 28 ) {
                self.friendCourse.image = imageArray[28]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 29 ) {
                self.friendCourse.image = imageArray[29]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 30 ) {
                self.friendCourse.image = imageArray[30]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 31 ) {
                self.friendCourse.image = imageArray[31]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 32 ) {
                self.friendCourse.image = imageArray[32]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 33 ) {
                self.friendCourse.image = imageArray[33]
                // カウンターが1の場合はimageName2の画像を表示する
            }
            else if ( counter == 34 ) {
                self.friendCourse.image = imageArray[34]
                // カウンターが2の場合はimageName3の画像を表示する
            }
            else if ( counter == 35 ) {
                self.friendCourse.image = imageArray[35]
                // カウンターが2の場合はimageName3の画像を表示する
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
         friendCourseTimer.text = "01:00"
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
         friendCourseTimer.text = "03:00"
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
         friendCourseTimer.text = "10:00"
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
         let dt:Date = df.date(from: friendCourseTimer.text!)! as Date
             
        
             // カウントダウン
         var dt02 = Date(timeInterval: -1.0, since: dt as Date)
             
         self.friendCourseTimer.text = df.string(from: dt02 as Date)
      
             // 終了判定 3分が00:00になったら isEqualToString:文字の比較
             if self.friendCourseTimer.text == "00:00" {

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
