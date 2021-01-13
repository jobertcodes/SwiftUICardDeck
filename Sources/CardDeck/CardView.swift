//
//  CardView.swift
//  SwiftUICardDeck - https://codesparkio.github.io/SwiftUICardDeck/
//
//  Created by Jobert Sa on 12/01/2021.
//

import SwiftUI

public struct CardView<Content: View>: View {
    private let content: Content
    
    init(content: Content) {
        self.content = content
    }
    
    public var body: some View {
        GeometryReader { geometry in
            content
        }
    }
}


struct PokerCardView: View {
    let cardValue: String
    
    var body: some View {
        CardView(content: VStack(alignment: .center, content: {
            Text(cardValue)
                .font(.system(size: 500))
                .frame(maxWidth: .infinity, alignment: .center)
        }))
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        PokerCardView(cardValue: "🂡")
    }
}
