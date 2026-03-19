//
//  ContentView.swift
//  MunicipalVoteCounting
//
//  Created by VERONIQUE Dérick on 12/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var BeaunolVotes = 0
    @State var VeilleurVotes = 0
    func incrementBeaunolVotes() {
        BeaunolVotes += 1
    }
    func incrementVeilleurVotes() {
        VeilleurVotes += 1
    }
    
    var body: some View {
        
        VStack {
            Text("Municipal Vote Counting")
                .font(.title)
                .fontWeight(.bold)
            HStack {
                
                VStack {
                    Image("Beaunol")
                        .resizable()
                        .cornerRadius(20)
                        .aspectRatio(contentMode: .fit)
                    Button("Beanol") {
                        incrementBeaunolVotes()                
                    }
                        .font(.title)
                     Text(String(BeaunolVotes))
                }
            VStack {
                Image("Veilleur")
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                
                Button("Veilleur") {
                    incrementVeilleurVotes()
                }
                    .font(.title)
                Text(String(VeilleurVotes))
            }
            
                
            }
            .padding()
        }
        }
        
}

#Preview {
    ContentView()
}
