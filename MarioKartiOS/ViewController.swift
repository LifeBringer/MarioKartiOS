//
//  ViewController.swift
//  MarioKartiOS
//
//  Created by R Alda on 2021-03-06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kartViewMario: UIImageView!
    
    @IBOutlet weak var kartViewMush: UIImageView!
    
    @IBOutlet weak var kartViewBowser: UIImageView!
    
    var startingPointKartViewMario = CGPoint()
    var startingPointKartViewMush = CGPoint()
    var startingPointKartViewBowser = CGPoint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        startingPointKartViewMario = kartViewMario.center
        startingPointKartViewMush = kartViewMush.center
        startingPointKartViewBowser = kartViewBowser.center
        
    }
    
    @IBAction func didPanKartView(_ sender: UIPanGestureRecognizer) {
        let location = sender.location(in: view)
        let kartView = sender.view!
        kartView.center = location

    }
    
    @IBAction func didPinchKartView(_ sender: UIPinchGestureRecognizer) {
        let scale = sender.scale
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(scaleX: scale, y: scale)
    }
    
    @IBAction func didRotationKartView(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        let kartView = sender.view!
        kartView.transform = CGAffineTransform(rotationAngle: rotation)
    }
    
    @IBAction func didTapKartView(_ sender: UITapGestureRecognizer) {
        let kartView = sender.view!
        
        UIView.animate(withDuration: 0.6) {
            kartView.center.x += 400
        }
     
    }
    
    @IBAction func didLongPressBackground(_ sender: UILongPressGestureRecognizer) {
        
        UIView.animate(withDuration: 0.8) {
            self.kartViewBowser.transform = CGAffineTransform.identity
            self.kartViewMush.transform = CGAffineTransform.identity
            self.kartViewMario.transform = CGAffineTransform.identity
            
            self.kartViewBowser.center = self.startingPointKartViewBowser
            self.kartViewMush.center = self.startingPointKartViewMush
            self.kartViewMario.center = self.startingPointKartViewMario
        }
        
    }
    
    
}


