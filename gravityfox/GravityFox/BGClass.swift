//
//  BGClass.swift
//  GravityFox
//
//  Created by Mateusz Chojnacki on 05.04.2017.
//  Copyright © 2017 Mateusz Chojnacki. All rights reserved.
//

import SpriteKit

class BGClass: SKSpriteNode{
    
    func moveBG(camera: SKCameraNode){
        if self.position.x + self.size.width < camera.position.x{
            self.position.x += self.size.width * 3;
        }
    }
    
    
} // class
