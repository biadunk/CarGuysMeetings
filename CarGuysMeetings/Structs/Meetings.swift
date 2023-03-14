//
//  Meetings.swift
//  CarGuysMeetings
//
//  Created by Kacper Biaduń on 06/03/2023.
//

import SwiftUI

struct Meet: Identifiable {
    var id = UUID()
    
    var title: String
    var date: String
    var time: String
    var place: String
}

//Test⬇️

struct MeetExample{
    static let meet = [
        Meet(title: "NightRide", date: "8/20/2022", time: "22:00", place: "WWA"),
        Meet(title: "NightRide", date: "8/20/2022", time: "22:00", place: "WWA"),
        Meet(title: "NightRide", date: "8/20/2022", time: "22:00", place: "WWA"),
        Meet(title: "NightRide", date: "8/20/2022", time: "22:00", place: "WWA")
    ]
}
