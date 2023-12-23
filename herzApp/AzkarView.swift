//
//  AzkarView.swift
//  herzApp
//
//  Created by mariyam yasin on 04/06/1445 AH.
//

import SwiftUI

struct AzkarView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color.SBlue
                    .ignoresSafeArea()
                VStack{
                    Text("الأذكار").font(.custom("AA-GALAXY",size: 26)).padding()
                    HStack{
                        Image(.sun)
                            .resizable()
                            .frame(width:65 , height: 65)
                            .padding(.leading,-60)
                        
                        Button{} label: {
                            NavigationLink(destination: MorningScreen()) {
                                Text("أذكار الصباح")
                                    .font(.custom("AA-GALAXY",size: 32))
                                    .foregroundColor(.black)
                                    .padding(.leading,20)
                                    .font(.system(size: 30))
                            }}//button
                        //hstack
                    }.frame(width: 330, height: 110)
                        .background(.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.LGray, lineWidth: 1)
                        )
                        .blur(radius: 1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(.bottom,20)
                    
                    HStack{
                        Image(.halfMoon)
                            .resizable()
                            .frame(width:65 , height: 65)
                            .padding(.leading,-60)
                        
                        Button{} label: {
                            NavigationLink(destination: EveningScreen()) {
                                Text("أذكار المساء")
                                    .bold()
                                    .font(.custom("AA-GALAXY",size: 32))
                                    .foregroundColor(.black)
                                    .padding(.leading,10)
                                    .font(.system(size: 30))
                            }}//button
                        //hstack
                    }.frame(width: 330, height: 110)
                        .background(.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.LGray, lineWidth: 1)
                        )
                        .blur(radius: 1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(.bottom,20)
                    
                    HStack{
                        Image(.sleep)
                            .resizable()
                            .frame(width:65 , height: 65)
                            .padding(.leading,-60)
                        
                        Button{} label: {
                            NavigationLink(destination: SleepScreen()) {
                                Text("أذكار النوم")
                                    .bold()
                                    .font(.custom("AA-GALAXY",size: 32))
                                    .foregroundColor(.black)
                                    .padding(.leading,10)
                                    .font(.system(size: 30))
                            }}//button
                        //hstack
                    }.frame(width: 330, height: 110)
                        .background(.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.LGray, lineWidth: 1)
                        )
                        .blur(radius: 1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding(.bottom,20)
                    
                    HStack{
                        Image(.nabawiMosque)
                            .resizable()
                            .frame(width:65 , height: 65)
                            .padding(.leading,-20)
                        
                        Button{} label: {
                            NavigationLink(destination: AfterPrayerScreen()) {
                                Text("أذكار بعد الصلاة")
                                    .bold()
                                    .font(.custom("AA-GALAXY",size: 32))
                                    .foregroundColor(.black)
                                    .padding(.leading,10)
                                    .font(.system(size: 30))
                            }}//button
                        //hstack
                    }.frame(width: 330, height: 110)
                        .background(.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.LGray, lineWidth: 1)
                        )
                        .blur(radius: 1)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }//vstack
            }
            }//navigation stack
        }
    }


        struct   AzkarView_Previews: PreviewProvider {
            static var previews: some View {
                AzkarView().environment(\.layoutDirection, .rightToLeft)
            }
        }

