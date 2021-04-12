//
//  CardView.swift
//  SwiftUICardDeck - https://jobertcodes.github.io/SwiftUICardDeck/
//
//  Created by Jobert Sa on 12/01/2021.
//

import SwiftUI

public struct CardView<Content: View>: View {
    private let content: Content
    let size: CGSize
    let cornerRadius: CGFloat
    
    init(content: Content,
         size: CGSize,
         cornerRadius: CGFloat) {
        self.content = content
        self.size = size
        self.cornerRadius = cornerRadius
    }
    
    public var body: some View {
        GeometryReader { geometry in
            content
        }
        .padding()
        .frame(width: size.width, height: size.height)
        .cornerRadius(cornerRadius)
    }
}


struct PokerCardView: View {
    let cardValue: String
    
    var body: some View {
        CardView(content: VStack(alignment: .center, content: {
            Text(cardValue)
                .font(.system(size: 350))
                .frame(maxWidth: .infinity, alignment: .center)
        }),
        size: CGSize(width: 300, height: 400),
        cornerRadius: 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        PokerCardView(cardValue: "🂡")
    }
}
