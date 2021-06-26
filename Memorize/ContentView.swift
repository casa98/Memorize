//
//  ContentView.swift
//  Memorize
//
//  Created by SafeKeeping on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return ZStack(alignment: .bottom) {
            Text("Hello, World!")
                .foregroundColor(Color.purple)
                .padding(.all)
             
            RoundedRectangle(cornerRadius: 25.0)
                .stroke(Color.red, lineWidth: 4.0)
            
        }
        .padding(.horizontal, 50.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
