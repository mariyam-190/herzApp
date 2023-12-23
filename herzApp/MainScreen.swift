//
//  MainScreen.swift
//  herzApp
//
//  Created by mariyam yasin on 01/06/1445 AH.
//

import SwiftUI

struct MainScreen: View {

       
    var body: some View {
        ZStack{
            TabView{
                
                    AzkarView()
                        .tabItem {
                            Label("الأذكار", systemImage: "book.fill")

                        }

                SubhaScreen()
                        .tabItem {
                            Label("السبحة", systemImage: "circle.hexagonpath")
                        }
               
            }.accentColor(.DGray)
            }.onAppear(){
                UITabBar.appearance().backgroundColor = .white
                
            }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen().environment(\.layoutDirection, .rightToLeft)
//            .environmentObject(SwiftUIView())
    }
}



