//
//  MainMenuScene.swift
//  GravityFox
//
//  Created by Mateusz Chojnacki on 06.05.2017.
//  Copyright © 2017 Mateusz Chojnacki. All rights reserved.
//

import SpriteKit

var x = 0;

class MainMenuScene: SKScene {

    
    override func sceneDidLoad() {
        
        if x == 0{
            self.run(SKAction.playSoundFileNamed("candylobby.wav", waitForCompletion: false)); // sound
            x+=1;
        }
        
        
         // xD 
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for tauch in touches{
            let location = tauch.location(in: self);
            
            if atPoint(location).name == "Start" {
                
                if let scene = GameplayScene(fileNamed: "GameplayScene") {
                self.run(SKAction.playSoundFileNamed("beep2.wav", waitForCompletion: true)); // sound
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(2)))
                        view?.showsPhysics = false;  // dont display colision frame
                }
            }
            if atPoint(location).name == "HowTo" {
                
                if let scene = HowToPlayScene(fileNamed: "HowToPlay") {
                
                    self.run(SKAction.playSoundFileNamed("beep2.wav", waitForCompletion: true)); // sound
                    // Set the scale mode to scale to fit the window
                    scene.scaleMode = .aspectFill
                    
                    // Present the scene
                    view?.presentScene(scene, transition: SKTransition.doorsOpenVertical(withDuration: TimeInterval(2)))
                }
            }

            

        }
    }

    
} // class
