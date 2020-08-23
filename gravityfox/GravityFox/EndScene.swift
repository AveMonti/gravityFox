
import SpriteKit

class EndScene: SKScene {
    
    
    
    var scoreLabel: SKLabelNode!
    
    
    
    override func sceneDidLoad() {
        scoreLabel = childNode(withName: "ScoreLabel") as? SKLabelNode;
        scoreLabel?.text = String(score);
        
        
        
        self.run(SKAction.playSoundFileNamed("crash1.wav", waitForCompletion: true)); // sound
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
            self.run(SKAction.playSoundFileNamed("gameover.wav", waitForCompletion: true)); // sound
        }
      
        
    }
    
    
    //scoreLabel?.text = String(score);
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for tauch in touches{
            let location = tauch.location(in: self);
            
            if atPoint(location).name == "PlayAgain" {
                self.run(SKAction.playSoundFileNamed("beep2.wav", waitForCompletion: true)); // sound
                
                if let scene = GameplayScene(fileNamed: "GameplayScene") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(2)))
                }
            }
            if atPoint(location).name == "GoMenu" {
                self.run(SKAction.playSoundFileNamed("beep2.wav", waitForCompletion: true)); // sound
                if let scene = MainMenuScene(fileNamed: "MainMenu") {
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(1)))
                }
            }
            
            
            
        }
    }
    
    
} // class

