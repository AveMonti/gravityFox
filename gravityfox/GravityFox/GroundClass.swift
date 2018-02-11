//
//  GroundClass.swift
//  GravityFox
//
//  Created by Mateusz Chojnacki on 05.04.2017.
//  Copyright © 2017 Mateusz Chojnacki. All rights reserved.
//

import SpriteKit

class GroundClass: SKSpriteNode {
    
    func initializeGroundAndFloor(){
        physicsBody = SKPhysicsBody(rectangleOf: self.size);
        physicsBody?.affectedByGravity = false;
        physicsBody?.isDynamic = false;
        physicsBody?.collisionBitMask = ColliderType.GROUND;
    }
    
    func moveGroundsOrFloors(camera: SKCameraNode){
        if self.position.x + self.size.width < camera.position.x{
            self.position.x += self.size.width * 3;
        }
    }
} // class
