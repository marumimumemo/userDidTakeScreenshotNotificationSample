//
//  ViewController.swift
//  userDidTakeScreenshotNotificationSample
//
//  Created by 丸本聡 on 2020/01/04.
//  Copyright © 2020 丸本聡. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button:UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        NotificationCenter.default.addObserver(
            self,
            selector: #selector(didTakeScreenCaptured(_:)),
            name: UIApplication.userDidTakeScreenshotNotification,
            object: nil
        )
    }

    @objc private func didTakeScreenCaptured(_ notification: Notification) {
        button.isHidden = true
    }


}

