//
//  ManagementEventsTableViewController.swift
//  ManagementEvents
//
//  Created by Phan Thi Ngoc Cam on 4/26/17.
//  Copyright © 2017 Phan Thi Ngoc Cam. All rights reserved.
//

import UIKit

class ManagementEventsTableViewController: UITableViewController {

    // Data Source
    lazy var eventLines: [EventLine] = {
        return EventLine.eventLines()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Ten tieu de
        title = "Quan ly lich lam viec "
        
        // Button Edit
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // Số section của Table View = số ngày trong tuần
    override func numberOfSections(in tableView: UITableView) -> Int {
        return eventLines.count
    }

    // Số hàng mỗi section = số sự kiện trong 1 ngày
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let eventLine = eventLines[section]
        return eventLine.events.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath)
        
        // section ngay hien tai
        let eventLine = eventLines[indexPath.section]
        
        // row su kien trong ngay hien tai
        let event = eventLine.events[indexPath.row]
        
        
        // Dua ten su kien va chi tiet su kien ra Cell
        cell.textLabel?.text = event.title
        cell.detailTextLabel?.text = event.description

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let eventLine = eventLines[section]
        return eventLine.day
    }

    
    // Ham xoa su kien
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            let eventLine = eventLines[indexPath.section]
            eventLine.events.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            
        }    
    }

    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to toIndexPath: IndexPath) {
        let eventLine1 = eventLines[fromIndexPath.section]
        let eventLine2 = eventLines[toIndexPath.section]
        let event = eventLine1.events[fromIndexPath.row]
        eventLine1.events.remove(at: fromIndexPath.row)
        eventLine2.events.insert(event, at: toIndexPath.row)
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            switch identifier {
                case "EventDetail":
                    let eventDetailVC = segue.destination as! EventDetailTableViewController
                    if let indexPath = self.tableView.indexPathForSelectedRow {
                        eventDetailVC.event = eventAtIndexPath(indexPath: indexPath as NSIndexPath)
                        eventDetailVC.dayDetail = dayAtIndexPath(indexPath: indexPath as NSIndexPath)
                    }
                break
                
            default:
                break
            }
        }
    }
    
    // MARK: - Helper Method
    
    func eventAtIndexPath(indexPath: NSIndexPath) -> Event
    {
        let eventLine = eventLines[indexPath.section]
        return eventLine.events[indexPath.row]
    }
    
    func dayAtIndexPath(indexPath: NSIndexPath) -> String
    {
        let eventLine = eventLines[indexPath.section]
        return eventLine.day
    }

}
