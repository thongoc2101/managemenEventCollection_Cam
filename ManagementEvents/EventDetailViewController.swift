//
//  EventDetailViewController.swift
//  ManagementEvents
//
//  Created by Phan Thi Ngoc Cam on 5/6/17.
//  Copyright © 2017 Phan Thi Ngoc Cam. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    
    @IBOutlet weak var txtNgay: UILabel!
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var container: UITextView!
    
    
    var event: Event?
    var ngay: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        txtNgay.text = ngay
        image.image = event?.image
        txtLabel.text = event?.title
        container.text = event?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
