//
//  QSoilWater.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 22/05/23.
//

import SwiftUI

struct Question3 {
    var text : String
    var options : [String]
    var correctAnswer :  Int
}

struct QSoilWater: View {
    let question = [
        Question3(text: "Factors that affecting plant water needs, except?", options: ["Infiltration", "Runoff", "Transpiration"], correctAnswer: 1),
    ]
    @State private var currentQuestionIndex = 0
    @State private var userScore = 0
    @State private var showAlert =  false
    var name: String

    
    var body: some View {
        ZStack {
            Image("BG1")
                .scaleEffect(0.39)
                .opacity(0.5)
                .overlay(Color.black.opacity(0.5))
                .offset(x:33,y:-12)
            HStack{
                
                Text("Level \(currentQuestionIndex + 1)")
                    .font(.system(size: 23))
                    .shadow(color:Color(red: 0.266, green: 0.604, blue: 0.338),radius: 2, x:1, y:1)
                    .offset(x:130, y:-360)
                    .foregroundColor(Color.white)
                    .shadow(color:.black, radius: 2, x:2, y:2)
            }
            VStack{
                Text(question[currentQuestionIndex].text)
                    .frame(width: 300)
                    .font(.system(size: 25, design: .monospaced))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.white)
                    .shadow(color:.black, radius: 2, x:2, y:2)
                ForEach(0..<question[currentQuestionIndex].options
                    .count, id: \.self) { index in Button(action:{
                        checkAnswer(index)}){
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color(red: 0.999, green: 0.751, blue: 0.356))
                                .frame(width: 215, height: 40)
                                .shadow(color: .black, radius: 2, x:2, y:2)
                                .overlay(
                                    Text(question[currentQuestionIndex].options[index])
                                        .foregroundColor(.black)
                                        .font(.system(size: 20))
                                        .bold())
                        }.padding(.bottom, 10)
                    }
            }.alert(isPresented: $showAlert){
                Alert(
                    title: Text("Quiz Result"),
                    message: Text("Your score: \(userScore) out of \(question.count)"),
                    primaryButton: .default(Text("Finish"), action: otherView),
                    secondaryButton: .default(Text("Back"), action: otherView1)
                )
            }
        }
    }
    func checkAnswer(_ selectedAnswerIndex: Int) {
        if selectedAnswerIndex == question[currentQuestionIndex].correctAnswer {
                    userScore += 1
                }
        if currentQuestionIndex < question.count - 1 {
                    currentQuestionIndex += 1
                } else {
                    showAlert = true
                }
            }
    func otherView(){
        music.shared.playMusic()
        let otherView = Finish()
        let navigationController = UINavigationController(rootViewController: UIHostingController(rootView: otherView))
                    
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                        scene.windows.first?.rootViewController = navigationController
                        scene.windows.first?.makeKeyAndVisible()
                    }
                }
    func otherView1(){
        music.shared.playMusic()
        let otherView = Choices(name: name)
        let navigationController = UINavigationController(rootViewController: UIHostingController(rootView: otherView))
                    
        if let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                        scene.windows.first?.rootViewController = navigationController
                        scene.windows.first?.makeKeyAndVisible()
                    }
                }
    }

struct QSoilWater_Previews: PreviewProvider {
    static var previews: some View {
        QSoilWater(name: "")
    }
}
