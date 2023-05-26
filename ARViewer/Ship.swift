//
//  Ship.swift
//  ARViewer
//
//  Created by Faris Sbahi on 6/6/17.
//  Copyright © 2017 Faris Sbahi. All rights reserved.
//

import UIKit
import SceneKit

class Ship: SCNNode {
    override init() {
        super.init()
        
        // Load the .usdz asset
        guard let url = Bundle.main.url(forResource: "uglyMonster", withExtension: "usdz") else {
            fatalError("Failed to find the .usdz file")
        }
        let scene = try! SCNScene(url: url, options: nil)
        
        // Retrieve the root node from the loaded scene
        let rootNode = scene.rootNode
        
        // Add the root node to the ship node
        self.addChildNode(rootNode)
        
        // Set up physics properties (if needed)
        let shape = SCNPhysicsShape(node: rootNode, options: nil)
        self.physicsBody = SCNPhysicsBody(type: .dynamic, shape: SCNPhysicsShape(geometry: SCNSphere(radius: 0.08)))
        self.physicsBody?.isAffectedByGravity = false
        
        // Set up collision and contact test bit masks (if needed)
        self.physicsBody?.categoryBitMask = CollisionCategory.ship.rawValue
        self.physicsBody?.contactTestBitMask = CollisionCategory.bullets.rawValue
        
        // Scale down the ship node
        let scaleFactor: CGFloat = 0.2 // Adjust the scale factor as needed
        self.scale = SCNVector3(scaleFactor, scaleFactor, scaleFactor)
        
        
        // Create a rotation action
        let rotationAction = SCNAction.rotateBy(x: .pi, y: .pi, z: 0, duration: 0.5)
        let repeatAction = SCNAction.repeatForever(rotationAction)

        // Apply the rotation action to the node
        rootNode.runAction(repeatAction)

    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
