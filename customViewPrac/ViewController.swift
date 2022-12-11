import UIKit

class ViewController: UIViewController {

    // 📌 UIView를 상속하는 CustomView를 상속
     @IBOutlet weak var yellowView: DesignCustomView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
//        yellowView.layer.borderWidth = 10
//        yellowView.layer.cornerRadius = 10
    }
}

