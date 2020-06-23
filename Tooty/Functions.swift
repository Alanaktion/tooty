//
//  Functions.swift
//  Tooty
//
//  Created by Alan Hardman on 10/31/19.
//  Copyright © 2019 Alan Hardman. All rights reserved.
//

import Foundation

extension Date {
    ///
    /// Provides a short humanized relative date. For example: now, 1h, 2d, 1y
    ///
    func timeAgoShort() -> String {
        let calendar = Calendar.current
        let now = Date()
        let earliest = self < now ? self : now
        let latest =  self > now ? self : now

        let unitFlags: Set<Calendar.Component> = [.minute, .hour, .day, .weekOfMonth, .month, .year, .second]
        let components: DateComponents = calendar.dateComponents(unitFlags, from: earliest, to: latest)

        if let year = components.year {
            if year >= 1 {
                return "\(year)y"
            }
        }
        if let month = components.month {
            if month >= 1 {
                return "\(month)M"
            }
        }
        if let weekOfMonth = components.weekOfMonth {
            if weekOfMonth >= 1 {
                return "\(weekOfMonth)w"
            }
        }
        if let day = components.day {
            if day >= 1 {
                return "\(day)d"
            }
        }
        if let hour = components.hour {
            if hour >= 1 {
                return "\(hour)h"
            }
        }
        if let minute = components.minute {
            if minute >= 3 {
                return "\(minute)m"
            }
        }
        return "now"
    }
}
