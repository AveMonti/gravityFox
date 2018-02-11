//
//  ItemConroller.swift
//  GravityFox
//
//  Created by Mateusz Chojnacki on 06.04.2017.
//  Copyright © 2017 Mateusz Chojnacki. All rights reserved.
//

import SpriteKit

class ItemController{
    
    private var minY = CGFloat(-263), maxY = CGFloat(263);
    
    func spawnItem(camera: SKCameraNode) -> SKSpriteNode {
        
        let item: SKSpriteNode?;
        
        if Int(randomBetweenNumbers(firstNum: 0, secoundNum: 10)) >= 6{
            item = SKSpriteNode(imageNamed: "Rocket");
            item?.name = "Rocket";
            item?.physicsBody?.categoryBitMask = ColliderType.ROCKET_AND_COLLECTABLES;
            item?.setScale(0.3);
            item?.physicsBody = SKPhysicsBody(rectangleOf: item!.size);
        }else{
            item = SKSpriteNode(imageNamed: "Cheese");
            item?.name = "Cheese";
            item?.physicsBody?.categoryBitMask = ColliderType.ROCKET_AND_COLLECTABLES;
            item?.setScale(0.4);
            item?.physicsBody = SKPhysicsBody(rectangleOf: item!.size);
        }
        item?.physicsBody?.isDynamic = false;
        item!.physicsBody?.affectedByGravity = false;
        item?.zPosition = 5;
        item!.anchorPoint = CGPoint(x: 0.5, y: 0.5);
        item?.position.x = camera.position.x + 900;
        item?.position.y = randomBetweenNumbers(firstNum: minY, secoundNum: maxY);
        return item!;
    }
    
    func randomBetweenNumbers(firstNum: CGFloat, secoundNum: CGFloat) -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secoundNum) + min(firstNum, secoundNum);
    }
    
}// class
