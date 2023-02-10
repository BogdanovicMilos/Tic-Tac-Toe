//
//  GameSquareView1.swift
//  Tic-Tac-Toe
//
//  Created by Milos Bogdanovic on 10.2.23..
//

import SwiftUI

struct GameSquareView1: View {
    
    var proxy: GeometryProxy
    
    var body: some View {
        Circle()
            .foregroundColor(.red)
            .frame(width: proxy.size.width/3 - 15, height: proxy.size.width/3 - 15)
    }
}

struct GameSquareView1_Previews: PreviewProvider {
    static var previews: some View {
        GameSquareView1()
    }
}
