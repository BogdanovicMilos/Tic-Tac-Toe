//
//  ContentView.swift
//  Tic-Tac-Toe
//
//  Created by Milos Bogdanovic on 10.2.23..
//

import SwiftUI


struct GameView: View {
    
    @StateObject private var viewModel = GameViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                LazyVGrid(columns: viewModel.columns, spacing: 5) {
                    ForEach(0..<9) { i in
                        ZStack {
                            GameSquareView(proxy: geometry)
                            PlayerIndicator(systemImageName: viewModel.moves[i]?.indicator ?? "")
                        }
                        .onTapGesture {
                            viewModel.processPlayerMove(for: i)
                        }
                    }
                }
                Spacer()
            }
            .disabled(viewModel.isBoardDisabled)
            .padding()
            .alert(viewModel.alertItem?.title ?? "", isPresented: $viewModel.showingAlert) {
                Button(viewModel.alertItem?.buttonTitle ?? "") {
                    viewModel.resetGame()
                }
            }
        }
        .background(Color.gray)
    }
}
 
enum Player {
    case human, cpu
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
