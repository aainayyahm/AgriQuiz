//
//  Question.swift
//  PC1
//
//  Created by Ayla Ainayyah M on 20/05/23.
//

import SwiftUI

struct Question1 {
    var text : String
    var options : [String]
    var correctAnswer :  Int
}

struct Question: View {
    let question = [
        Question1(text: "Vehicles that are specifically designed for high traction at low speeds are called?", options: ["Tractor", "Fertilizer", "Transplanter"], correctAnswer: 0),
        Question1(text: "The equipment used for primary cultivation is?", options: ["Rotary Plow","Dish Harrow","Rotary Harrow"], correctAnswer: 0),
        Question1(text: "The following are included in agricultural buildings, except?", options: ["Cage","Green House","House"], correctAnswer: 2),
        Question1(text: "One type of greenhouse that is commonly used in the tropics are?", options: ["Piggy Back","Tunnel","Multispan"], correctAnswer: 1),
        Question1(text: "Types of writing commonly used in engineering drawings are?", options: ["Calibri","SF Mono","Arial"], correctAnswer: 2),
        Question1(text: "Types of plant houses whose main purpose is to reduce the level of radiation entering the plant house are?", options: ["Green House","Shade House","Blue House"], correctAnswer: 1),
        Question1(text: "Storage buildings where the storage facilities are in the form of bag storage are known as?", options: ["Silo","Warehouse","Refrigerator"], correctAnswer: 0),
        Question1(text: "The main part of the engine that functions as a moving part to pump fuel and air into the combustion chamber is called?", options: ["Piston","Governor","Crankshaft"], correctAnswer: 0),
        Question1(text: "The machine used to plant seeds is called?", options: ["Reaper","Transplanter","Seeder"], correctAnswer: 2),
        Question1(text: "The component that functions as a regulator of seeds that come out on the tool or planting machine is called?", options: ["Seed Tube","Metering Device","Covering Device"], correctAnswer: 2),
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
        

struct Question_Previews: PreviewProvider {
    static var previews: some View {
        Question(name: "")
    }
}
