//
//  Alerts.swift
//  Tic-Tac-Toe
//
//  Created by Milos Bogdanovic on 10.2.23..
//

import SwiftUI


struct Alert {
    let id = UUID()
    var title: String
    var buttonTitle: String
}

struct AlertContext {
    static let humanWin = Alert(title: "You Win!", buttonTitle: "Try Again")
    static let cpuWin = Alert(title: "You Lost!", buttonTitle: "Rematch")
    static let draw = Alert(title: "Draw", buttonTitle: "Try Again")
}
