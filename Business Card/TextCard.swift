//
//  TextCard.swift
//  Business Card
//
//  Created by Gus Adi on 09/08/20.
//  Copyright © 2020 Gusadi. All rights reserved.
//

import SwiftUI

struct TextCard: View {
    let text: String
    let imageName: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                Text(text)
            })
            .padding(.all)
    }
}

struct TextCard_Previews: PreviewProvider {
    static var previews: some View {
        TextCard(text: "hello", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
