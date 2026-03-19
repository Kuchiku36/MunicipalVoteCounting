//
//  ContentView.swift
//  MunicipalVoteCounting
//
//  Created by VERONIQUE Dérick on 12/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var CandidateOne = 0
    @State var CandidateTwo = 0
    func incrementCandidateOne() {
        CandidateOne += 1
    }
    func incrementCandidateTwo() {
        CandidateTwo += 1
    }
    
    var body: some View {
        
        VStack {
            Text("Municipal Vote Counting")
                .font(.title)
                .fontWeight(.bold)
            HStack {
                
                VStack {
                    Image("CandidateOne")
                        .resizable()
                        .cornerRadius(20)
                        .aspectRatio(contentMode: .fit)
                    Button("CandidateOne") {
                        incrementCandidateOne()
                    }
                        .font(.title)
                     Text(String(CandidateOne))
                }
            VStack {
                Image("CandidateTwo")
                    .resizable()
                    .cornerRadius(20)
                    .aspectRatio(contentMode: .fit)
                
                Button("CandidateTwo") {
                    incrementCandidateTwo()
                }
                    .font(.title)
                Text(String(CandidateTwo))
            }
            
                
            }
            .padding()
        }
        }
        
}

#Preview {
    ContentView()
}
