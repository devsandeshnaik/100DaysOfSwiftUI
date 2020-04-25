//
//  ContentView.swift
//  Edutaintment
//
//  Created by Sandesh on 28/03/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI

struct Question {
    var question: String
    var answer: String
}

struct ContentView: View {
    @State private var answer = ""
    @State private var number = 2
    @State private var questionCount = 0
    @State private var questionOptions = ["5","10","20","All"]
    @State private var questions:[Question] = []
    
    @State private var correctAnswers = 0
    
    var body: some View {
        updateQuestions()
        return VStack{
            Stepper("Multiplication table upto \(number)", value: $number, in: 2...15, step: 1)
                .padding()
            Text("How many questions would you like to answer?")
            Picker(selection: $questionCount, label: Text("Picker")) {
                ForEach(0..<questionOptions.count) {
                    Text(self.questionOptions[$0])
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            VStack(alignment: .center) {
                Text(questions.randomElement()?.question ?? "")
                    .fontWeight(.bold)
                    .font(.system(size: 44))
                
                Text("=")
                    .fontWeight(.bold)
                    .font(.system(size: 44))
                
                TextField("Answer", text: $answer)
                .padding()
                    .multilineTextAlignment(.center)
                
                Button("Submit") {
                    
                }
            }
        }
        .onAppear(perform: updateQuestions)
        
    }
    
    
    func updateQuestions() {
        switch questionCount {
        case 0:
            var count = 0
            while count < 5 {
                let mulplicant = Array(2...number).randomElement()!
                let multiplier = Array(1...10).randomElement()!
                let question = "\(mulplicant) x \(multiplier)"
                questions.append(Question(question: question, answer: "\(mulplicant*multiplier)"))
                count += 1
            }
        case 1:
            var count = 0
            while count < 10 {
                let mulplicant = Array(2...number).randomElement()!
                let multiplier = Array(1...10).randomElement()!
                let question = "\(mulplicant) x \(multiplier)"
                questions.append(Question(question: question, answer: "\(mulplicant*multiplier)"))
                count += 1
            }
        case 2:
            var count = 0
            while count < 20 {
                let mulplicant = Array(2...number).randomElement()!
                let multiplier = Array(1...10).randomElement()!
                let question = "\(mulplicant) x \(multiplier)"
                questions.append(Question(question: question, answer: "\(mulplicant*multiplier)"))
                count += 1
            }
        case 4:
            var count = 0
            while count < 5 {
                let mulplicant = Array(2...number).randomElement()!
                let multiplier = Array(1...10).randomElement()!
                let question = "\(mulplicant) x \(multiplier)"
                questions.append(Question(question: question, answer: "\(mulplicant*multiplier)"))
                count += 1
            }
        default: break
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
