//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Jack Walters on 10/20/20.
//  Copyright © 2020 Jack Walters. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUP: true)
            }
        }
            .padding()
            .foregroundColor(.orange)
            .font(Font.largeTitle)
        
        
    }
}

struct CardView: View {
    
    var isFaceUP: Bool
    
    var body: some View {
        ZStack {
            if isFaceUP {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill()
            }
        }
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
