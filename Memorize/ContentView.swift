//
//  ContentView.swift
//  Memorize
//
//  Created by SafeKeeping on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😊", "🥰", "😍", "😏"]
    
    var body: some View {
        HStack {
            ForEach(emojis, id: \.self) { emoji in
                CardView(content: emoji)
            }
        }.padding(.all)
        .foregroundColor(.red)
    }
}

struct CardView: View {
    @State var isFaceUp: Bool = false
    var content: String

    var body: some View {
        ZStack(alignment: .center) {
            let shape = RoundedRectangle(cornerRadius: 25.0)
            if(isFaceUp){
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 3.0)
                Text(content)
                    .font(.largeTitle)
                    .foregroundColor(Color.purple)
                    .padding(.all)
            }else{
                shape.fill()
            }
        }.onTapGesture {
            // View modifier for each entire card
            isFaceUp = !isFaceUp;
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        ContentView()
            .preferredColorScheme(.dark)
    }
}
