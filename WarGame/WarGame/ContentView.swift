//
//  ContentView.swift
//  WarGame
//
//  Created by Ash Kumar on 2024-03-04.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    @State var playerScore: Int = 0
    @State var cpuScore: Int = 0
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
                
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                   deal()
                }, label: {
                    Image("button")
                })
                    
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").font(.headline)
                        Text(String(playerScore)).font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU").font(.headline)
                        Text(String(cpuScore)).font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
                
                
                
            }
        }
    }
    
    func deal(){
        
        var playerRand: Int = Int.random(in: 2...14)
        var cpuRand: Int = Int.random(in: 2...14)
        // Randomize the players card
        playerCard = "card" + String(playerRand)
        
        // Randomize cpu cards
        cpuCard = "card" + String(cpuRand)
        
        // Update scores
        if playerRand > cpuRand{
            playerScore += 1
        } else {
            cpuScore += 1
        }
        
    }
    
}



#Preview {
    ContentView()
}
