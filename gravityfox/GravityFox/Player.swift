//
//  Player.swift
//  GravityFox
//
//  Created by Mateusz Chojnacki on 05.04.2017.
//  Copyright © 2017 Mateusz Chojnacki. All rights reserved.
//

import SpriteKit


struct ColliderType{
    static let PLAYER: UInt32 = 0;
    static let GROUND: UInt32 = 1;
    static let ROCKET_AND_COLLECTABLES: UInt32 = 2;
}

class Player: SKSpriteNode{
    
    private var playerAnimation = [SKTexture]();
    private var animatePlayerAction = SKAction();
    private var playerAnimation2 = [SKTexture]();
    private var animatePlayerAction2 = SKAction();
    
    func initializePlayer(){
        
        name = "Player";
        
        for i in 1...4{
            let name = "Fox\(i)";
            playerAnimation.append(SKTexture(imageNamed: name));
            
        }
        
        animatePlayerAction = SKAction.animate(with: playerAnimation, timePerFrame: 0.08, resize: true, restore: false);
        self.run(SKAction.repeatForever(animatePlayerAction));
        
        physicsBody = SKPhysicsBody(rectangleOf: CGSize(width: self.size.width - 20, height: self.size.height - 10));
        physicsBody?.affectedByGravity = true;
        physicsBody?.allowsRotation = false;
        physicsBody?.restitution = 0;
        physicsBody?.categoryBitMask = ColliderType.PLAYER;
        physicsBody?.collisionBitMask = ColliderType.GROUND;
        physicsBody?.contactTestBitMask = ColliderType.ROCKET_AND_COLLECTABLES;
    }
    
    func move(){
        self.position.x += 10;
    }
    
    func reversePlayer(){
        self.yScale *= -1;
    }
    
    
    
} // class
