
import UIKit
import AVFoundation

class AllViewController: UIViewController {

    @IBOutlet weak var allCourse: UIImageView!
       
       @IBOutlet weak var allCourseTimer: UILabel!
    
       var player:AVAudioPlayer?
       
       var timer: Timer!
       
       var timer_sec: Float = 0
       
       var counter:Int = 0
       
       let picture = UIImage(named: "stopimage")
       let picture2 = UIImage(named: "startimage")
       
       @IBOutlet weak var startButton: UIButton!
       
       var imageArray:[UIImage] = [
        UIImage(named: "image1.1")!,
        UIImage(named: "image1.2")!,
        UIImage(named: "image1.3")!,
        UIImage(named: "image2.1")!,
        UIImage(named: "image2.2")!,
        UIImage(named: "image2.3")!,
        UIImage(named: "image2.4")!,
        UIImage(named: "image2.5")!,
        UIImage(named: "image3.1")!,
        UIImage(named: "image3.2")!,
        UIImage(named: "image4.1")!,
        UIImage(named: "image4.2")!,
        UIImage(named: "image4.3")!,
        UIImage(named: "image4.4")!,
        UIImage(named: "image1.4")!,
        UIImage(named: "image1.5")!,
        UIImage(named: "image1.6")!,
        UIImage(named: "image2.6")!,
        UIImage(named: "image2.7")!,
        UIImage(named: "image2.8")!,
        UIImage(named: "image2.9")!,
        UIImage(named: "image2.10")!,
        UIImage(named: "image3.3")!,
        UIImage(named: "image3.4")!,
        UIImage(named: "image3.5")!,
        UIImage(named: "image4.5")!,
        UIImage(named: "image4.6")!,
        UIImage(named: "image4.7")!,
        UIImage(named: "image4.8")!,
        UIImage(named: "image1.7")!,
        UIImage(named: "image1.8")!,
        UIImage(named: "image1.9")!,
        UIImage(named: "image2.11")!,
        UIImage(named: "image2.12")!,
        UIImage(named: "image2.13")!,
        UIImage(named: "image2.14")!,
        UIImage(named: "image2.15")!,
        UIImage(named: "image3.6")!,
        UIImage(named: "image3.7")!,
        UIImage(named: "image3.8")!,
        UIImage(named: "image4.9")!,
        UIImage(named: "image4.10")!,
        UIImage(named: "image4.11")!,
        UIImage(named: "image4.12")!,
        UIImage(named: "image1.10")!,
        UIImage(named: "image1.11")!,
        UIImage(named: "image1.12")!,
        UIImage(named: "image2.16")!,
        UIImage(named: "image2.17")!,
        UIImage(named: "image2.18")!,
        UIImage(named: "image2.19")!,
        UIImage(named: "image2.20")!,
        UIImage(named: "image3.9")!,
        UIImage(named: "image3.10")!,
        UIImage(named: "image3.11")!,
        UIImage(named: "image4.13")!,
        UIImage(named: "image4.14")!,
        UIImage(named: "image4.15")!,
        UIImage(named: "image4.16")!,
        UIImage(named: "image1.13")!,
        UIImage(named: "image1.14")!,
        UIImage(named: "image1.15")!,
        UIImage(named: "image2.21")!,
        UIImage(named: "image2.22")!,
        UIImage(named: "image2.23")!,
        UIImage(named: "image2.24")!,
        UIImage(named: "image2.25")!,
        UIImage(named: "image3.12")!,
        UIImage(named: "image3.13")!,
        UIImage(named: "image3.14")!,
        UIImage(named: "image4.17")!,
        UIImage(named: "image4.18")!,
        UIImage(named: "image4.19")!,
        UIImage(named: "image4.20")!,
        UIImage(named: "image1.16")!,
        UIImage(named: "image1.17")!,
        UIImage(named: "image1.18")!,
        UIImage(named: "image2.26")!,
        UIImage(named: "image2.27")!,
        UIImage(named: "image2.28")!,
        UIImage(named: "image2.29")!,
        UIImage(named: "image2.30")!,
        UIImage(named: "image3.15")!,
        UIImage(named: "image3.16")!,
        UIImage(named: "image4.21")!,
        UIImage(named: "image4.22")!,
        UIImage(named: "image4.23")!,
        UIImage(named: "image4.24")!,
        UIImage(named: "image1.19")!,
        UIImage(named: "image1.20")!,
        UIImage(named: "image1.21")!,
        UIImage(named: "image2.31")!,
        UIImage(named: "image2.32")!,
        UIImage(named: "image2.33")!,
        UIImage(named: "image2.34")!,
        UIImage(named: "image2.35")!,
        UIImage(named: "image3.17")!,
        UIImage(named: "image3.18")!,
        UIImage(named: "image4.25")!,
        UIImage(named: "image4.26")!,
        UIImage(named: "image4.27")!,
        UIImage(named: "image4.28")!,
        UIImage(named: "image1.22")!,
        UIImage(named: "image1.23")!,
        UIImage(named: "image1.24")!,
        UIImage(named: "image2.36")!,
        UIImage(named: "image2.37")!,
        UIImage(named: "image2.38")!,
        UIImage(named: "image2.39")!,
        UIImage(named: "image2.40")!,
        UIImage(named: "image3.19")!,
        UIImage(named: "image3.20")!,
        UIImage(named: "image3.21")!,
        UIImage(named: "image4.29")!,
        UIImage(named: "image4.30")!,
        UIImage(named: "image4.31")!,
        UIImage(named: "image4.32")!,
        UIImage(named: "image1.25")!,
        UIImage(named: "image1.26")!,
        UIImage(named: "image1.27")!,
        UIImage(named: "image2.41")!,
        UIImage(named: "image2.42")!,
        UIImage(named: "image2.43")!,
        UIImage(named: "image2.44")!,
        UIImage(named: "image2.45")!,
        UIImage(named: "image3.22")!,
        UIImage(named: "image3.23")!,
        UIImage(named: "image3.24")!,
        UIImage(named: "image4.33")!,
        UIImage(named: "image4.34")!,
        UIImage(named: "image4.35")!,
        UIImage(named: "image4.36")!,
        UIImage(named: "image1.28")!,
        UIImage(named: "image1.29")!,
        UIImage(named: "image1.30")!,
        UIImage(named: "image2.46")!,
        UIImage(named: "image2.47")!,
        UIImage(named: "image2.48")!,
        UIImage(named: "image2.49")!,
        UIImage(named: "image2.50")!,
        UIImage(named: "image3.25")!,
        UIImage(named: "image3.26")!,
        UIImage(named: "image3.27")!,
        UIImage(named: "image4.37")!,
        UIImage(named: "image4.38")!,
        UIImage(named: "image4.39")!,
        UIImage(named: "image1.31")!,
        UIImage(named: "image1.32")!,
        UIImage(named: "image1.33")!,
        UIImage(named: "image1.34")!,
        UIImage(named: "image2.51")!,
        UIImage(named: "image2.52")!,
        UIImage(named: "image2.53")!,
        UIImage(named: "image2.54")!,
        UIImage(named: "image2.55")!,
        UIImage(named: "image4.40")!,
        UIImage(named: "image4.41")!,
        UIImage(named: "image4.42")!,
        UIImage(named: "image1.35")!,
        UIImage(named: "image1.36")!,
        UIImage(named: "image1.37")!,
        UIImage(named: "image1.38")!,
        UIImage(named: "image1.39")!,
        UIImage(named: "image2.56")!,
        UIImage(named: "image2.57")!,
        UIImage(named: "image2.58")!,
        UIImage(named: "image2.59")!,
        UIImage(named: "image2.60")!,
        UIImage(named: "image3.28")!,
        UIImage(named: "image3.29")!,
        UIImage(named: "image3.30")!,
        UIImage(named: "image4.43")!,
        UIImage(named: "image4.44")!,
        UIImage(named: "image4.45")!,
        UIImage(named: "image1.40")!,
        UIImage(named: "image1.41")!,
        UIImage(named: "image1.42")!,
        UIImage(named: "image1.43")!,
        UIImage(named: "image2.61")!,
        UIImage(named: "image2.62")!,
        UIImage(named: "image2.63")!,
        UIImage(named: "image2.64")!,
        UIImage(named: "image2.65")!,
        UIImage(named: "image3.31")!,
        UIImage(named: "image3.32")!,
        UIImage(named: "image3.33")!,
        UIImage(named: "image4.46")!,
        UIImage(named: "image4.47")!,
        UIImage(named: "image4.48")!,
        UIImage(named: "image1.44")!,
        UIImage(named: "image1.45")!,
        UIImage(named: "image1.46")!,
        UIImage(named: "image2.66")!,
        UIImage(named: "image2.67")!,
        UIImage(named: "image2.68")!,
        UIImage(named: "image2.69")!,
        UIImage(named: "image2.70")!,
        UIImage(named: "image3.34")!,
        UIImage(named: "image3.35")!,
        UIImage(named: "image3.36")!,
        UIImage(named: "image4.49")!,
        UIImage(named: "image4.50")!,
           ]

       override func viewDidLoad() {
           super.viewDidLoad()
           
           self.allCourse.image = imageArray[0]
           
           allCourseTimer.font = UIFont.init(name: "DBLCDTempBlack", size: 100 )

           // Do any additional setup after loading the view.
       }
       
       
       
       
       @IBAction func back(_ sender: Any) {
           
           dismiss(animated: true, completion: nil)
           
       }
       
       @objc func updateTimer(_ timer: Timer) {
           self.timer_sec += 0.005

              counter = counter + 1
              // 現在用意している画像は3枚なので、カウンターが2より大きくなったら0にする
              if ( counter > 201 ) {
                  counter = 0
              }
              if ( counter == 0 ) {
                  self.allCourse.image = imageArray[0]
                  // カウンターが0の場合はimageName1の画像を表示する
              }
              else if ( counter == 1 ) {
                  self.allCourse.image = imageArray[1]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 2 ) {
                  self.allCourse.image = imageArray[2]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 3 ) {
                  self.allCourse.image = imageArray[3]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 4 ) {
                  self.allCourse.image = imageArray[4]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 5 ) {
                  self.allCourse.image = imageArray[5]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 6 ) {
                  self.allCourse.image = imageArray[6]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 7 ) {
                  self.allCourse.image = imageArray[7]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 8 ) {
                  self.allCourse.image = imageArray[8]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 9 ) {
                  self.allCourse.image = imageArray[9]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 10 ) {
                  self.allCourse.image = imageArray[10]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 11 ) {
                  self.allCourse.image = imageArray[11]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 12 ) {
                  self.allCourse.image = imageArray[12]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 13 ) {
                  self.allCourse.image = imageArray[13]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 14 ) {
                  self.allCourse.image = imageArray[14]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 15 ) {
                  self.allCourse.image = imageArray[15]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 16 ) {
                  self.allCourse.image = imageArray[16]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 17 ) {
                  self.allCourse.image = imageArray[17]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 18 ) {
                  self.allCourse.image = imageArray[18]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 19 ) {
                  self.allCourse.image = imageArray[19]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 20 ) {
                  self.allCourse.image = imageArray[20]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 21 ) {
                  self.allCourse.image = imageArray[21]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 22 ) {
                  self.allCourse.image = imageArray[22]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 23 ) {
                  self.allCourse.image = imageArray[23]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 24 ) {
                  self.allCourse.image = imageArray[24]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 25 ) {
                  self.allCourse.image = imageArray[25]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 26 ) {
                  self.allCourse.image = imageArray[26]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 27 ) {
                  self.allCourse.image = imageArray[27]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 28 ) {
                  self.allCourse.image = imageArray[28]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 29 ) {
                  self.allCourse.image = imageArray[29]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 30 ) {
                  self.allCourse.image = imageArray[30]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 31 ) {
                  self.allCourse.image = imageArray[31]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 32 ) {
                  self.allCourse.image = imageArray[32]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 33 ) {
                  self.allCourse.image = imageArray[33]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 34 ) {
                  self.allCourse.image = imageArray[34]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 35 ) {
                  self.allCourse.image = imageArray[35]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 36 ) {
                  self.allCourse.image = imageArray[36]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 37 ) {
                  self.allCourse.image = imageArray[37]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 38 ) {
                  self.allCourse.image = imageArray[38]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 39 ) {
                  self.allCourse.image = imageArray[39]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 40 ) {
                  self.allCourse.image = imageArray[40]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 41 ) {
                  self.allCourse.image = imageArray[41]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 42 ) {
                  self.allCourse.image = imageArray[42]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 43 ) {
                  self.allCourse.image = imageArray[43]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 44 ) {
                  self.allCourse.image = imageArray[44]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 45 ) {
                  self.allCourse.image = imageArray[45]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 46 ) {
                  self.allCourse.image = imageArray[46]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 47 ) {
                  self.allCourse.image = imageArray[47]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 48 ) {
                  self.allCourse.image = imageArray[48]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 49 ) {
                  self.allCourse.image = imageArray[49]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 50 ) {
                  self.allCourse.image = imageArray[50]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 51 ) {
                  self.allCourse.image = imageArray[51]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 52 ) {
                  self.allCourse.image = imageArray[52]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 53 ) {
                  self.allCourse.image = imageArray[53]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 54 ) {
                  self.allCourse.image = imageArray[54]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 55 ) {
                  self.allCourse.image = imageArray[55]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 56 ) {
                  self.allCourse.image = imageArray[56]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 57 ) {
                  self.allCourse.image = imageArray[57]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 58 ) {
                  self.allCourse.image = imageArray[58]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 59 ) {
                  self.allCourse.image = imageArray[59]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 60 ) {
                  self.allCourse.image = imageArray[60]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 61 ) {
                  self.allCourse.image = imageArray[61]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 62 ) {
                  self.allCourse.image = imageArray[62]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 63 ) {
                  self.allCourse.image = imageArray[63]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 64 ) {
                  self.allCourse.image = imageArray[64]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 65 ) {
                  self.allCourse.image = imageArray[65]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 66 ) {
                  self.allCourse.image = imageArray[66]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 67 ) {
                  self.allCourse.image = imageArray[67]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 68 ) {
                  self.allCourse.image = imageArray[68]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 69 ) {
                  self.allCourse.image = imageArray[69]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 70 ) {
                  self.allCourse.image = imageArray[70]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 71 ) {
                  self.allCourse.image = imageArray[71]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 72 ) {
                  self.allCourse.image = imageArray[72]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 73 ) {
                  self.allCourse.image = imageArray[73]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 74 ) {
                  self.allCourse.image = imageArray[74]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 75 ) {
                  self.allCourse.image = imageArray[75]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 76 ) {
                  self.allCourse.image = imageArray[76]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 77 ) {
                  self.allCourse.image = imageArray[77]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 78 ) {
                  self.allCourse.image = imageArray[78]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 79 ) {
                  self.allCourse.image = imageArray[79]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 80 ) {
                  self.allCourse.image = imageArray[80]
                 
              }
              else if ( counter == 81 ) {
                  self.allCourse.image = imageArray[81]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 82 ) {
                  self.allCourse.image = imageArray[82]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 83 ) {
                  self.allCourse.image = imageArray[83]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 84 ) {
                  self.allCourse.image = imageArray[84]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 85 ) {
                  self.allCourse.image = imageArray[85]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 86 ) {
                  self.allCourse.image = imageArray[86]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 87 ) {
                  self.allCourse.image = imageArray[87]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 88 ) {
                  self.allCourse.image = imageArray[88]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 89 ) {
                  self.allCourse.image = imageArray[89]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 90 ) {
                  self.allCourse.image = imageArray[90]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 91 ) {
                  self.allCourse.image = imageArray[91]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 92 ) {
                  self.allCourse.image = imageArray[92]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 93 ) {
                  self.allCourse.image = imageArray[93]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 94 ) {
                  self.allCourse.image = imageArray[94]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 95 ) {
                  self.allCourse.image = imageArray[95]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 96 ) {
                  self.allCourse.image = imageArray[96]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 97 ) {
                  self.allCourse.image = imageArray[97]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 98 ) {
                  self.allCourse.image = imageArray[98]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 99 ) {
                  self.allCourse.image = imageArray[99]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 100 ) {
                  self.allCourse.image = imageArray[100]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 101 ) {
                  self.allCourse.image = imageArray[101]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 102 ) {
                  self.allCourse.image = imageArray[102]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 103 ) {
                  self.allCourse.image = imageArray[103]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 104 ) {
                  self.allCourse.image = imageArray[104]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 105 ) {
                  self.allCourse.image = imageArray[105]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 106 ) {
                  self.allCourse.image = imageArray[106]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 107 ) {
                  self.allCourse.image = imageArray[107]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 108 ) {
                  self.allCourse.image = imageArray[108]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 109 ) {
                  self.allCourse.image = imageArray[109]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 110 ) {
                  self.allCourse.image = imageArray[110]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 111 ) {
                  self.allCourse.image = imageArray[111]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 112 ) {
                  self.allCourse.image = imageArray[112]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 113 ) {
                  self.allCourse.image = imageArray[113]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 114 ) {
                  self.allCourse.image = imageArray[114]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 115 ) {
                  self.allCourse.image = imageArray[115]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 116 ) {
                  self.allCourse.image = imageArray[116]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 117 ) {
                  self.allCourse.image = imageArray[117]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 118 ) {
                  self.allCourse.image = imageArray[118]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 119 ) {
                  self.allCourse.image = imageArray[119]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 120 ) {
                  self.allCourse.image = imageArray[120]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 121 ) {
                  self.allCourse.image = imageArray[121]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 122 ) {
                  self.allCourse.image = imageArray[122]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 123 ) {
                  self.allCourse.image = imageArray[123]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 124 ) {
                  self.allCourse.image = imageArray[124]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 125 ) {
                  self.allCourse.image = imageArray[125]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 126 ) {
                  self.allCourse.image = imageArray[126]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 127 ) {
                  self.allCourse.image = imageArray[127]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 128 ) {
                  self.allCourse.image = imageArray[128]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 129 ) {
                  self.allCourse.image = imageArray[129]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 130 ) {
                  self.allCourse.image = imageArray[130]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 131 ) {
                  self.allCourse.image = imageArray[131]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 132 ) {
                  self.allCourse.image = imageArray[132]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 133 ) {
                  self.allCourse.image = imageArray[133]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 134 ) {
                  self.allCourse.image = imageArray[134]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 135 ) {
                  self.allCourse.image = imageArray[135]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 136 ) {
                  self.allCourse.image = imageArray[136]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 137 ) {
                  self.allCourse.image = imageArray[137]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 138 ) {
                  self.allCourse.image = imageArray[138]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 138 ) {
                  self.allCourse.image = imageArray[138]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 139 ) {
                  self.allCourse.image = imageArray[139]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 140 ) {
                  self.allCourse.image = imageArray[140]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 141 ) {
                  self.allCourse.image = imageArray[141]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 142 ) {
                  self.allCourse.image = imageArray[142]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 143 ) {
                  self.allCourse.image = imageArray[143]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 144 ) {
                  self.allCourse.image = imageArray[144]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 145 ) {
                  self.allCourse.image = imageArray[145]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 146 ) {
                  self.allCourse.image = imageArray[146]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 147 ) {
                  self.allCourse.image = imageArray[147]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 148 ) {
                  self.allCourse.image = imageArray[148]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 149 ) {
                  self.allCourse.image = imageArray[149]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 150 ) {
                  self.allCourse.image = imageArray[150]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 151 ) {
                  self.allCourse.image = imageArray[151]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 152 ) {
                  self.allCourse.image = imageArray[152]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 153 ) {
                  self.allCourse.image = imageArray[153]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 154 ) {
                  self.allCourse.image = imageArray[154]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 155 ) {
                  self.allCourse.image = imageArray[155]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 156 ) {
                  self.allCourse.image = imageArray[156]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 157 ) {
                  self.allCourse.image = imageArray[157]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 158 ) {
                  self.allCourse.image = imageArray[158]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 159 ) {
                  self.allCourse.image = imageArray[159]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 160 ) {
                  self.allCourse.image = imageArray[160]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 161 ) {
                  self.allCourse.image = imageArray[161]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 162 ) {
                  self.allCourse.image = imageArray[162]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 163 ) {
                  self.allCourse.image = imageArray[163]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 164 ) {
                  self.allCourse.image = imageArray[164]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 165 ) {
                  self.allCourse.image = imageArray[165]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 166 ) {
                  self.allCourse.image = imageArray[166]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 167 ) {
                  self.allCourse.image = imageArray[167]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 168 ) {
                  self.allCourse.image = imageArray[168]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 169 ) {
                  self.allCourse.image = imageArray[169]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 170 ) {
                  self.allCourse.image = imageArray[170]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 171 ) {
                  self.allCourse.image = imageArray[171]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 172 ) {
                  self.allCourse.image = imageArray[172]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 173 ) {
                  self.allCourse.image = imageArray[173]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 174 ) {
                  self.allCourse.image = imageArray[174]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 175 ) {
                  self.allCourse.image = imageArray[175]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 176 ) {
                  self.allCourse.image = imageArray[176]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 177 ) {
                  self.allCourse.image = imageArray[177]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 178 ) {
                  self.allCourse.image = imageArray[178]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 179 ) {
                  self.allCourse.image = imageArray[179]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 180 ) {
                  self.allCourse.image = imageArray[180]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 181 ) {
                  self.allCourse.image = imageArray[181]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 182 ) {
                  self.allCourse.image = imageArray[182]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 183 ) {
                  self.allCourse.image = imageArray[183]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 184 ) {
                  self.allCourse.image = imageArray[184]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 185 ) {
                  self.allCourse.image = imageArray[185]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 186 ) {
                  self.allCourse.image = imageArray[186]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 187 ) {
                  self.allCourse.image = imageArray[187]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 188 ) {
                  self.allCourse.image = imageArray[188]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 189 ) {
                  self.allCourse.image = imageArray[189]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 190 ) {
                  self.allCourse.image = imageArray[190]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 191 ) {
                  self.allCourse.image = imageArray[191]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 192 ) {
                  self.allCourse.image = imageArray[192]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 193 ) {
                  self.allCourse.image = imageArray[193]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 194 ) {
                  self.allCourse.image = imageArray[194]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 195 ) {
                  self.allCourse.image = imageArray[195]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 196 ) {
                  self.allCourse.image = imageArray[196]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 197 ) {
                  self.allCourse.image = imageArray[197]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 198 ) {
                  self.allCourse.image = imageArray[198]
                  // カウンターが1の場合はimageName2の画像を表示する
              }
              else if ( counter == 199 ) {
                  self.allCourse.image = imageArray[199]
                  // カウンターが2の場合はimageName3の画像を表示する
              }
              else if ( counter == 200 ) {
                  self.allCourse.image = imageArray[200]
                  // カウンターが1の場合はimageName2の画像を表示する
          }
              else if ( counter == 201 ) {
                  self.allCourse.image = imageArray[201]
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
           allCourseTimer.text = "01:00"
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
           allCourseTimer.text = "03:00"
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
           allCourseTimer.text = "10:00"
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
           let dt:Date = df.date(from: allCourseTimer.text!)! as Date
               
          
               // カウントダウン
           var dt02 = Date(timeInterval: -1.0, since: dt as Date)
               
           self.allCourseTimer.text = df.string(from: dt02 as Date)
        
               // 終了判定 3分が00:00になったら isEqualToString:文字の比較
               if self.allCourseTimer.text == "00:00" {

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
