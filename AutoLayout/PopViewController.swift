//
//  PopViewController.swift
//  AutoLayout
//
//  Created by Prashant G on 11/13/18.
//  Copyright © 2018 MyOrg. All rights reserved.
//

import UIKit

class PopViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the vie
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        modalPresentationStyle = .popover
        popoverPresentationController!.delegate = self
        
        
    }
    
    @IBAction func dismissModel(_ sender: Any) {
        dismiss(animated: true)
    }
    
}

extension PopViewController: UIPopoverPresentationControllerDelegate {
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        switch (traitCollection.horizontalSizeClass,traitCollection.verticalSizeClass) {
        case (.compact,.compact): return .fullScreen
        default: return .none
        }
    }
    
    func presentationController(_ controller: UIPresentationController,
                                willPresentWithAdaptiveStyle _: UIModalPresentationStyle) -> UIViewController {
        return UINavigationController(rootViewController: controller.presentedViewController)
    }
    
    
    
    
}
