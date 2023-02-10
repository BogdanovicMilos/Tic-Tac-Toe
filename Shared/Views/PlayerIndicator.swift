//
//  PlayerIndicator.swift
//  Tic-Tac-Toe
//
//  Created by Milos Bogdanovic on 10.2.23..
//

import SwiftUI


struct PlayerIndicator: View {
    
    var systemImageName: String
    
    var body: some View {
        Image(systemName: systemImageName)
            .resizable()
            .frame(width: 40, height: 40)
            .foregroundColor(.white)
    }
}
