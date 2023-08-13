//
//  Choices.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 20/05/23.
//

import SwiftUI

struct Choices: View {
    @State var name = ""
    @State private var isMusicActive =  false
    @State private var isMusicActive1 =  false
    @State private var isMusicActive2 =  false
    var body: some View {
        NavigationStack{
            ZStack {
                Image("BG1")
                    .scaleEffect(0.39)
                    .opacity(0.5)
                    .overlay(Color.black.opacity(0.5))
                    .offset(x:33,y:-12)
                NameView(name: $name)
                
                VStack{
                    Text("What field are you interested in?")
                        .frame(width: 300)
                        .font(.system(size: 25, design: .monospaced))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.white)
                        .shadow(color:.black, radius: 2, x:2, y:2)
                        .offset(y:-10)
                    Button {
                        music.shared.stopMusic()
                        self.isMusicActive = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.154, green: 0.322, blue: 0.241))
                            .frame(width: 230, height: 40)
                            .shadow(color: .black, radius: 2, x:1, y:1)
                            .overlay(
                                Text("Agricultural Machinery")
                                    .foregroundColor(.white)
                                    .bold())
                            .offset(y:-10)
                    }
                    NavigationLink(destination: Question(name: name).navigationBarBackButtonHidden(), isActive: $isMusicActive){
                        EmptyView()
                    }
                   
                    Button {
                        music.shared.stopMusic()
                        self.isMusicActive1 = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.154, green: 0.322, blue: 0.241))
                            .frame(width: 150, height: 40)
                            .shadow(color: .black, radius: 2, x:1, y:1)
                            .overlay(
                                Text("Post-Harvest")
                                    .foregroundColor(.white)
                                    .bold())
                    }
                    NavigationLink(destination: QPostHarvest(name: name).navigationBarBackButtonHidden(), isActive: $isMusicActive1){
                        EmptyView()
                    }
                    
                    Button {
                        music.shared.stopMusic()
                        self.isMusicActive2 = true
                    } label: {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.154, green: 0.322, blue: 0.241))
                            .frame(width: 240, height: 40)
                            .shadow(color: .black, radius: 2, x:1, y:1)
                            .overlay(
                                Text("Soil and Water Engineering")
                                    .foregroundColor(.white)
                                    .bold())
                            .offset(y:10)
                    }
                    NavigationLink(destination: QSoilWater(name: name).navigationBarBackButtonHidden(), isActive: $isMusicActive2){
                        EmptyView()
                    }
                }
            }
        }
    }
}
struct NameView: View {
    @Binding var name : String
    var body: some View {
        VStack(alignment: .leading){
        Text("Hai, \(name)!")
            .font(.system(size: 23))
            .shadow(color:Color(red: 0.266, green: 0.604, blue: 0.338),radius: 2, x:1, y:1)
            .foregroundColor(Color.white)
            .shadow(color:.black, radius: 2, x:2, y:2)
            .offset(x:-110, y:-360)
        
    }}
}

struct Choices_Previews: PreviewProvider {
    static var previews: some View {
        Choices()
    }
}
