
import SpriteKit

class HowToPlayScene: SKScene {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for tauch in touches{
            let location = tauch.location(in: self);
            
            if atPoint(location).name == "Back" {
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
