

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userAnswer: sender.currentTitle!)
        
        updateUI ()
        }

    func updateUI (){
    storyLabel.text = storyBrain.getStoryTitle()
    choice1Button.setTitle(storyBrain.get1Q(), for: .normal)
    choice2Button.setTitle(storyBrain.get2Q(), for: .normal)
        
    }
    
}
