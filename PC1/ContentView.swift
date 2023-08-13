//
//  ContentView.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 20/05/23.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("name") private var name : String = ""   //Menyimpan nama di AppStorage jika aplikasi keluar, data akan tetap tersimpan
    var body: some View {
        NavigationStack{
            ZStack {
                Image("BG1")
                    .scaleEffect(0.39)
                    .opacity(0.5)
                    .overlay(Color.black.opacity(0.5))
                    .offset(x:33,y:-12)
                Image("Image 1")
                    .scaleEffect(0.7)
                    .shadow(color:.black,radius: 2, x:2,y:2)
                    .offset(y:-210)
                VStack{
                    
                    Text("Input your name!")
                        .font(.system(size: 25, design: .monospaced))
                        .foregroundColor(Color.white)
                        .shadow(color:.black, radius: 2, x:2, y:2)
                    TextField("Name", text: $name)
                        .frame(width: 230, height: 35)
                        .font(.system(size: 25))
                        .multilineTextAlignment(.center)
                        .textFieldStyle(RoundedBorderTextFieldStyle())

                    NavigationLink(destination: Choices(name: name).navigationBarBackButtonHidden()){
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(red: 0.869, green: 0.736, blue: 0.325))
                            .frame(width: 100, height: 40)
                            .shadow(color: .black, radius: 2, x:1, y:1)
                            .overlay(
                                Text("Next")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .bold())
                            .offset(y:10)
//
                    }
                    
                }
            
            }
            
        }
        
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
