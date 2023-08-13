//
//  Choices.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 20/05/23.
//

import SwiftUI

struct Choices1: View {
    
    var body: some View {
        ZStack {
            Image("BG")
                .opacity(0.72)
                .offset(x:-20)
            
            
            
            VStack{
                Text("What field are you interested in?")
                    .frame(width: 300)
                    .font(.system(size: 25, design: .monospaced))
                    .multilineTextAlignment(.center)
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.869, green: 0.736, blue: 0.325))
                    .frame(width: 215, height: 40)
                    .shadow(color: .black, radius: 2, x:1, y:1)
                    .overlay(
                        Text("Agricultural Machinery")
                            .bold()
                    )
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.869, green: 0.736, blue: 0.325))
                    .frame(width: 150, height: 40)
                    .shadow(color: .black, radius: 2, x:1, y:1)
                    .overlay(
                        Text("Post-Harvest")
                            .bold()
                    )
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color(red: 0.869, green: 0.736, blue: 0.325))
                    .frame(width: 250, height: 40)
                    .shadow(color: .black, radius: 2, x:1, y:1)
                    .overlay(
                        Text("Soil and Water Engineering")
                            .bold()
                    )
                
            }
        }
        
    }
}

struct Choices1_Previews: PreviewProvider {
    static var previews: some View {
        Choices1()
    }
}
