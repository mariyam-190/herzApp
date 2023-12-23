//
//  SplashScreen.swift
//  herzApp
//
//  Created by mariyam yasin on 07/06/1445 AH.
//


import SwiftUI

struct SplashScreen: View {
    @State private var isAnimating = false
    var body: some View {
        ZStack {
            //background color
            Color("mycolor")
            
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
                    .animation(.easeInOut(duration: 1.0))
                
                Spacer()
            }}
        
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                isAnimating = true
            }}
        
    }}
               

#Preview {
    SplashScreen()
}
