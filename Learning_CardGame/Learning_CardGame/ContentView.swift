//
//  ContentView.swift
//  Learning_CardGame
//
//  Created by Tc Liu on 3/7/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card7"
    @State var playerScore = 0
    @State var cpuScore = 0
    
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
                
                
                Button(action: {deal()}, label: {
                    Image("button")
                })
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("PLAYER")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                        
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }.foregroundColor(.white)
                Spacer()
            }

        }
    }
    func deal(){
        
        var playerNum = Int.random(in: 2...14)
        playerCard = "card" + String(playerNum)
        
        var cpuNum = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuNum)
        
        print(playerNum, cpuNum)
        if playerNum > cpuNum{
            print("")
            playerScore += 1
        }
        else if cpuNum > playerNum{
            print("this")
            cpuScore += 1
        }
    }
}
    

#Preview {
    ContentView()
}
