//
//  ViewController.swift
//  Animation
//
//  Created by Student on 06/11/2018.
//  Copyright © 2018 Student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var aView: UIView!
    
    

    override func viewDidLoad() {
        
        print(#function, view.bounds.width, view.bounds.height)
        
        aView = UIView(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        UIView.animate(withDuration: 3, animations: {
            self.aView.center.x = self.view.bounds.width / 2
            self.aView.center.y = self.view.bounds.height / 2
            
        })
        
        aView .backgroundColor = .red
        view.addSubview(aView)
        
    }
        var touchNumber = 0
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        var transform = CGAffineTransform.identity
        
        switch touchNumber {
        case 0:
            transform = CGAffineTransform(scaleX: 2, y: 2)
        case 2:
            transform = CGAffineTransform(rotationAngle: .pi / 2)
        case 4:
            transform = CGAffineTransform(scaleX: 2, y: 2).concatenating(CGAffineTransform(rotationAngle: -.pi / 2))
        default:
            break
        
            
            }
        
        UIView.animate(withDuration: 3) {
            self.aView.transform = transform
        }
       touchNumber += 1
        }
    }



