//
//  ContentView.swift
//  Memorize
//
//  Created by Kristijan Cetina on 27.5.20.
//  Copyright © 2020 Kristijan Cetina. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack() {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
        .foregroundColor(Color.orange)
        .padding()
        .font(Font.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CardView: View {
    var isFaceUp: Bool
    var body : some View{
        ZStack() {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 50)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: 50)
                    .stroke( lineWidth: 3)
                Text("👻")
            }
            else
            {
                RoundedRectangle(cornerRadius: 50)
                    .fill()
            }
        }
    }
}
