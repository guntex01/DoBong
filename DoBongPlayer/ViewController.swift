//
//  ViewController.swift
//  DoBongPlayer
//
//  Created by guntex01 on 2/15/20.
//  Copyright © 2020 guntex01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let brickView: UIView = {
          let view = UIView()
           view.backgroundColor = UIColor.brown
           return view
       }()
    override func viewDidLoad() {
        super.viewDidLoad()
        brickView.frame = CGRect(x: 0, y: 0, width: 200, height: 200)
            brickView.center =  view.center
            view.addSubview(brickView)
            drawLayer()
            drawLayer1()
            drawLayer2()
            drawLayer3()
        }

        func drawLayer(){
            let width = brickView.frame.width
            let height = brickView.frame.height
            let shapeLayer = CAShapeLayer()
            //kich thuoc squareView
            let L = brickView.frame.size.width
            // x = 1/10L la doan kich thuoc thut vao
            let x = L / 10
            
            let topLayer = CAShapeLayer()
            let path1 = UIBezierPath()
            path1.move(to: CGPoint(x: 0, y: 0))
            path1.addLine(to: CGPoint(x: L , y: 0))
            path1.addLine(to: CGPoint(x: L-x, y: x))
            path1.addLine(to: CGPoint(x: x, y: x))
            
            topLayer.path = path1.cgPath
            shapeLayer.insertSublayer(topLayer, at: 0)
            topLayer.fillColor = UIColor.white.cgColor
            topLayer.opacity = 0.3
            brickView.layer.addSublayer(shapeLayer)
        }

        func drawLayer1(){
         
            let shapeLayer = CAShapeLayer()
            let L = brickView.frame.size.width
            let x = L / 10
            
            let topLayer = CAShapeLayer()
            let path2 = UIBezierPath()
            path2.move(to: CGPoint(x: 0, y: 0))
            path2.addLine(to: CGPoint(x: 0, y: L))
            path2.addLine(to: CGPoint(x: x, y: L - x))
            path2.addLine(to: CGPoint(x: x, y: x ))
            
            topLayer.path = path2.cgPath
            shapeLayer.insertSublayer(topLayer, at: 0)
            topLayer.fillColor = UIColor.white.cgColor
            topLayer.opacity = 0.3
            brickView.layer.addSublayer(shapeLayer)
        }
        
        func drawLayer2(){
            let shapeLayer = CAShapeLayer()
            let L = brickView.frame.size.width
            let x = L / 10
            
            let topLayer = CAShapeLayer()
            let path3 = UIBezierPath()
            path3.move(to: CGPoint(x: 0 , y: L))
            path3.addLine(to: CGPoint(x: L , y: L ))
            path3.addLine(to: CGPoint(x: L - x, y:L - x))
            path3.addLine(to: CGPoint(x: x , y: L - x ))
            
            topLayer.path = path3.cgPath
            shapeLayer.insertSublayer(topLayer, at: 0)
            topLayer.fillColor = UIColor.white.cgColor
            topLayer.opacity = 0.3
            brickView.layer.addSublayer(shapeLayer)
            
        }
        func drawLayer3(){
        let shapeLayer = CAShapeLayer()
        let L = brickView.frame.size.width
        let x = L / 10
        
        let topLayer = CAShapeLayer()
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: L , y: L))
        path4.addLine(to: CGPoint(x: L  , y: 0 ))
        path4.addLine(to: CGPoint(x: L - x, y: x))
        path4.addLine(to: CGPoint(x: L - x , y: L - x ))
        
        topLayer.path = path4.cgPath
        shapeLayer.insertSublayer(topLayer, at: 0)
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.3
        brickView.layer.addSublayer(shapeLayer)    
    }


}

