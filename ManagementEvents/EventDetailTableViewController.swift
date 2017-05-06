//
//  EventDetailTableViewController.swift
//  ManagementEvents
//


import UIKit

class EventDetailTableViewController: UITableViewController {
    
    
    @IBOutlet var lblDay: UILabel!
    @IBOutlet var lblEvent: UILabel!
    @IBOutlet var txtDescription: UITextView!

    var event: Event?
    var dayDetail: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        title = "Event Detail"
        
        
        lblDay.text = dayDetail
        
        
        lblEvent.text = event?.title
        
        
        txtDescription.text = event?.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  }
