//
//  ContentView.swift
//  herzApp
//
//  Created by mariyam yasin on 07/06/1445 AH.
//


import SwiftUI

struct ContentView: View {
    @State private var isAnimating = false
    @State private var isActive = false
    var body: some View {
        if isActive {
            MainScreen()
        } else {
            ZStack {
                //background color
                Color.SBlue
                    .ignoresSafeArea()
                //the logo
                VStack {
                    Spacer()
                    
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 267.0, height: 249.0)
                    
                    //text with animation
                    Image("Image2")
                        .padding(.top, 40.0)
                        .font(.title)
                        .foregroundColor(.black)
                        .opacity(isAnimating ? 1.0 : 0.0)
                        .offset(y: isAnimating ? 0 : UIScreen.main.bounds.height / 2)
                        .animation(.easeInOut(duration: 0.90))
                    
                    Spacer()
                }}
            
            .edgesIgnoringSafeArea(.all)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                    isAnimating = true
                }}
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                    withAnimation{
                        self.isActive = true
                    }
                    
                }
            }
        }
    }}

#Preview {
   ContentView().environment(\.layoutDirection, .rightToLeft)
}
