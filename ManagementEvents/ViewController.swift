//
//  ViewController.swift
//  ManagementEvents
//
//  Created by Phan Thi Ngoc Cam on 5/6/17.
//  Copyright © 2017 Phan Thi Ngoc Cam. All rights reserved.
//


import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var mycollectionView: UICollectionView!
    
    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.mycollectionView.delegate = self
        self.mycollectionView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return eventLines.count
    }
    
   
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyEventCollectionViewCell
        
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        
        cell.ImageView.image = event.image
        cell.titleLable.text = event.title
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let eventLine = eventLines[section]
        return eventLine.events.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: "header", for: indexPath) as! EventCollectionReusableView
        
        let eventLine = eventLines[indexPath.section]
        headerView.commentLable.text = eventLine.day
        
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, moveItemAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        
        let eventLine1 = eventLines[sourceIndexPath.section]
        let eventLine2 = eventLines[destinationIndexPath.section]
        
        let event = eventLine1.events[sourceIndexPath.row]
        eventLine1.events.remove(at: sourceIndexPath.row)
        eventLine2.events.insert(event, at: destinationIndexPath.row)
    }

    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let eventLine = eventLines[indexPath.section]
        let event = eventLine.events[indexPath.row]
        
        let detail = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "EventDetail") as! EventDetailViewController
        detail.ngay = eventLine.day
        detail.event = event
        self.navigationController?.pushViewController(detail, animated: true)
    }
    
    
}

