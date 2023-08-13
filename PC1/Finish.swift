 //
//  Finish.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 20/05/23.
//

import SwiftUI

struct Finish: View {
    var body: some View {
        
        ZStack {
            Image("BG1")
                .scaleEffect(0.39)
                .opacity(0.5)
                .overlay(Color.black.opacity(0.5))
                .offset(x:33,y:-12)
            
            VStack{
                Text("Congratulations!   You completed all the levels")
                    .frame(width: 300)
                    .font(.system(size: 35))
                    .multilineTextAlignment(.center)
                    .shadow(color:Color(red: 0.266, green: 0.604, blue: 0.338),radius: 6, x:0, y:0)
                    .foregroundColor(Color.white)
                    .shadow(color:.black, radius: 2, x:2, y:2)
            }
        }
        
    }
}

struct Finish_Previews: PreviewProvider {
    static var previews: some View {
        Finish()
    }
}
