//
//  GameSquareView.swift
//  Tic-Tac-Toe
//
//  Created by Milos Bogdanovic on 10.2.23..
//

import SwiftUI


struct GameSquareView: View {
    
    var proxy: GeometryProxy
    
    var body: some View {
        Circle()
            .foregroundColor(.indigo)
            .frame(width: proxy.size.width/3 - 15, height: proxy.size.width/3 - 15)
    }
}
