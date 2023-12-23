//
//  SubhaScreen.swift
//  herzApp
//
//  Created by mariyam yasin on 03/06/1445 AH.
//


import SwiftUI
import AVKit

class SoundManager {
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    func playSound(){
        guard let url = Bundle.main.url(forResource: "click", withExtension: ".mp3")
                
                else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error{
            print("Error playing sound. \(error.localizedDescription)")
        }
    }
    
}
struct SubhaScreen: View {
    @State var counter = 0
    var body: some View {
        NavigationStack {
            ZStack{
                Color.SBlue
                    .ignoresSafeArea()
                VStack{
                    Text(" (  وَفِي ذَٰلِكَ فَلْيَتَنَافَسِ الْمُتَنَافِسُون َ)"
                    ).font(.custom("AA-GALAXY",size: 26)).padding(.bottom,5)
                    Text("سورة المطففين - آية ٢٦").font(.custom("AA-GALAXY",size: 16)).padding(.bottom,30)
//                    Image("s")
//                        .resizable()
//                        .frame(width: 400, height: 160)
//                        .zIndex(-1)
                    Text("\(counter)")
                        .bold()
                        .font(Font.system(size:70))
                        .frame(width: 300,height: 190)
                        .background(.white)
                        .cornerRadius(20)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.LGray, lineWidth: 1)
                        )
                        .blur(radius: 1)
//                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                        .padding()
                    
                    
                    HStack{
                   
                        Button(action: {
                            self.counter += 1;
                            SoundManager.instance.playSound()
                        }, label: {
                            Text("+")
                                .bold()
                                .padding(.top, -10)
                                .font(Font.system(size: 75))
                                .foregroundColor(Color.DBlue)
                                .frame(width: 110 , height: 110)
                                .background(Color.white)
                                .cornerRadius(100)
                                .overlay( /// apply a rounded border
                                    RoundedRectangle(cornerRadius: 150)
                                        .stroke(Color.LGray, lineWidth: 1)
                                )
                                .blur(radius: 1)
//                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                        })
                        Button(action: {
                            self.counter -= 1;
                            SoundManager.instance.playSound()
                            
                        }, label: {
                            ZStack {
                                Text("-")
                                    .bold()
                                    .font(Font.system(size: 100))
                                    .padding(.top, -10)
                                    .foregroundColor(Color.DBlue)
                                    .frame(width: 110 , height: 110)
                                    .background(Color.white)
                                    .cornerRadius(100)
                                    .overlay( /// apply a rounded border
                                        RoundedRectangle(cornerRadius: 150)
                                            .stroke(Color.LGray, lineWidth: 1)
                                    )
                                    .blur(radius: 1)
    //                                .shadow(radius:10)
                                .padding(.leading,40)
                            }
                        })
                    }.padding(.top,50)
                }
            }
        }
    }
}
struct  SubhaScreen_Previews: PreviewProvider {
    static var previews: some View {
        SubhaScreen().environment(\.layoutDirection, .rightToLeft)
    }
}

