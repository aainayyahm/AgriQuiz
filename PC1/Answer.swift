//
//  Answer.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 20/05/23.
//

import SwiftUI

struct Answer: View {
    var body: some View {
        
        ZStack {
            Image("BG")
                .opacity(0.72)
                .offset(x:-20)
            HStack{
                Text("Hai, Nayah!")
                    .font(.system(size: 23))
                    .shadow(color:Color(red: 0.266, green: 0.604, blue: 0.338),radius: 2, x:1, y:1)
                    .offset(x:-80, y:-360)
                Text("Level 1")
                    .font(.system(size: 23))
                    .shadow(color:Color(red: 0.266, green: 0.604, blue: 0.338),radius: 2, x:1, y:1)
                    .offset(x:80, y:-360)
                   
            }
            VStack{
                Text("Tractor is vehicles that are specifically designed for high traction at low speeds")
                    .frame(width: 300)
                    .font(.system(size: 25, design: .monospaced))
                    .multilineTextAlignment(.center)
                Image(systemName: "checkmark.circle")
                    .foregroundColor(Color(red: 0.248, green: 0.735, blue: 0.198))
                    .font(.system(size: 50))
                
                
            }
        }
        
    }
}

struct Answer_Previews: PreviewProvider {
    static var previews: some View {
        Answer()
    }
}
