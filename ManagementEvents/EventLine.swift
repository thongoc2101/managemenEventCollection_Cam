//
//  EventLine.swift
//  ManagementEvents

//  Created by Phan Thi Ngoc Cam on 5/6/17.
//  Copyright © 2017 Phan Thi Ngoc Cam. All rights reserved.
//


import Foundation
import UIKit

class EventLine
{
    
    var day: String

    var events: [Event]
    
    init(daysOfWeek: String, includeEvents: [Event])
    {
        day = daysOfWeek
        events = includeEvents
    }
    
    
    
    class func eventLines() -> [EventLine]
    {
        return [self.Thu2(), self.Thu3(), self.Thu4(), self.Thu5(), self.Thu6(), self.Thu7(), self.CN()]
    }
    
    private class func Thu2() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Hoc chuyen de 4", description: "Hoc mang khong day",image: #imageLiteral(resourceName: "hinh4")))
        events.append(Event(titled: "Hoc chuyen de 1", description: "Hoc toeic", image: #imageLiteral(resourceName: "hinh2")))
        events.append(Event(titled: "An, ngu", description: "Nghi ngoi, thu gian",image:  #imageLiteral(resourceName: "hinh4")))
        
        return EventLine(daysOfWeek: "Thu2", includeEvents: events)
        
    }
    
    private class func Thu3() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "An ngu", description: "An ngu, thoai mai thu gian", image: #imageLiteral(resourceName: "hinh4")))
        events.append(Event(titled: "Doc truyen", description: "Doc truyen", image: #imageLiteral(resourceName: "hinh1")))

        return EventLine(daysOfWeek: "Thu3", includeEvents: events)
        
    }

    private class func Thu4() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Hoc TKPMHDT", description: "Di hoc", image: #imageLiteral(resourceName: "hinh9")))
        events.append(Event(titled: "An, nghi ngoi", description: "Nghi ngoi", image: #imageLiteral(resourceName: "hinh3")))
        events.append(Event(titled: "Hoc chuyen de IOS", description: "Di hoc", image: #imageLiteral(resourceName: "hinh5")))
        events.append(Event(titled: "Nghi nghoi", description: "Tam rua, an, nu", image: #imageLiteral(resourceName: "hinh3")))
        
        return EventLine(daysOfWeek: "Thu4", includeEvents: events)
        
    }
    

    private class func Thu5() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "An sang", description: "di hoc", image: #imageLiteral(resourceName: "hinh3")))
        events.append(Event(titled: "Di hoc tren truong", description: "Hoc vat ly 2", image: #imageLiteral(resourceName: "hinh3")))
        events.append(Event(titled: "Di choi", description: "Di choi voi ban be", image: #imageLiteral(resourceName: "hinh6")))
        
        return EventLine(daysOfWeek: "Thu5", includeEvents: events)
        
    }
   
    private class func Thu6() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Di hoc tren truong", description: "Hoc chuyen de 2", image: #imageLiteral(resourceName: "hinh4")))
        events.append(Event(titled: "Di cho, nau com", description: "Di mua do", image: #imageLiteral(resourceName: "hinh3")))
        
        return EventLine(daysOfWeek: "Thu6", includeEvents: events)
        
    }
    
    private class func Thu7() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Di hoc tren truong", description: "Hoc lap trinh IOS", image: #imageLiteral(resourceName: "hinh3")))
        events.append(Event(titled: "An trua", description: "An com", image: #imageLiteral(resourceName: "hinh4")))
        
        return EventLine(daysOfWeek: "Thu7", includeEvents: events)
        
    }
    

    private class func CN() -> EventLine
    {
        var events = [Event]()
        
        events.append(Event(titled: "Di choi voi ban be", description: "To chuc party", image: #imageLiteral(resourceName: "hinh3")))
        events.append(Event(titled: "Ngu trua", description: "Ngu trua toi 3h chieu", image: #imageLiteral(resourceName: "hinh4")))
                
        return EventLine(daysOfWeek: "CN", includeEvents: events)
        
    }
}
