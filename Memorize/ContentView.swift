//
//  ContentView.swift
//  Memorize
//
//  Created by SafeKeeping on 24/06/21.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😊", "🥰", "😍", "😏", "😀", "😁", "😅", "😂", "🥲", "🤣", "😇", "🙃", "😛", "🤪", "🤨", "🤓", "😎", "🥸", "🤩", "🥳", "🤮", "🤠", "🤬", "😈"]
    
    @State var cardsCount: Int = 4
    
    var body: some View {
        VStack {
            HStack {
                ForEach(emojis[0..<cardsCount], id: \.self) { emoji in
                    CardView(content: emoji)
                }
            }.padding(.all)
            .foregroundColor(.red)
            HStack{
                addButton
                Spacer()
                removeButton
            }.font(.largeTitle)
            .padding(.horizontal)
        }
    }
    
    var addButton: some View {
        Button(action: {
            if(cardsCount < emojis.count){
                cardsCount += 1
            }
        }, label: {
            // Using SF Symbols
            Image(systemName: "minus.circle")
        })
    }
    
    var removeButton: some View {
        Button {
            if(cardsCount > 1){
                cardsCount -= 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
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
