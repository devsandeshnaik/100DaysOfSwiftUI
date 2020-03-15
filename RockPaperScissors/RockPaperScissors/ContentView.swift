//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Sandesh on 14/03/20.
//  Copyright © 2020 Sandesh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    
    @State var score = 0
    @State var showComputerOption = false
    
    let allItems = ["Rock", "Paper", "Scissor"]
    var computerItem: String {
        allItems.randomElement()!
    }
    
    var userTaget: String {
        ["Win","Loose"].randomElement()!
    }
    
    var body: some View {
        NavigationView {
            VStack( spacing: 16) {
                Spacer()
                Text("\(score)")
                    .font(.headline)
                Text(userTaget)
                    .frame(width: 300, height: 150, alignment: .center)
                    .background(userTaget == "Win" ? Color.green : Color.red)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 40))
                Spacer()
                HStack(spacing: 16) {
                    Spacer()
                    ItemButton(image: "rock") { self.userSelected("rock") }
                    Spacer()
                    ItemButton(image: "paper") { self.userSelected("paper") }
                    Spacer()
                    ItemButton(image: "scissor") { self.userSelected("scissor") }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .navigationBarTitle("RockPaperScissor")
        }
        .alert(isPresented: $showComputerOption) { () -> Alert in
            Alert(title: Text("Final score"), message: Text(""), dismissButton: .default(Text("Ok")))
        }
    }
    
    
    private func userSelected(_ item: String) {
        
        var userStatus = ""
        
        if item == "rock" {
            if computerItem == "Paper" {
                userStatus = "Loose"
            } else if computerItem == "Scissor" {
                 userStatus = "Win"
            } else {
                userStatus = "Draw"
            }
        }
        
        if item == "paper" {
            if computerItem == "Rock" {
                 userStatus = "Win"
            } else if computerItem == "Scissor" {
                userStatus = "Loose"
            } else {
                userStatus = "Draw"
            }
        }
        
        if item == "scissor" {
            if computerItem == "Paper" {
                 userStatus = "Win"
            } else if computerItem == "Rock" {
                userStatus = "Loose"
            } else {
                userStatus = "Draw"
            }
        }
        
        
        if userStatus == userTaget {
            score += 1
        } else {
            score -= 1
        }
        
    }
}

struct ItemButton: View {
    var image: String
    var action: () -> ()
    
    var body: some View {
        Button(action: {
            self.action()
        }) {
            Image(image)
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
