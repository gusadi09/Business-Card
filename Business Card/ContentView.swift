//
//  ContentView.swift
//  Business Card
//
//  Created by Gus Adi on 09/08/20.
//  Copyright © 2020 Gusadi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("foto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 180, alignment: .center)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Agus Adi Pranata")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                TextCard(text: "+6285-85779-8199", imageName: "phone.fill")
                TextCard(text: "gusadi872@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
