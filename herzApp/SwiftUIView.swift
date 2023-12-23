////
////  SwiftUIView.swift
////  herzApp
////
////  Created by mariyam yasin on 29/05/1445 AH.
////
//
//import SwiftUI
//import AVKit
//
//class SoundManager {
//    static let instance = SoundManager()
//    
//    var player: AVAudioPlayer?
//    
//    func playSound(){
//        guard let url = Bundle.main.url(forResource: "click", withExtension: ".mp3")
//                
//                else { return }
//        do {
//            player = try AVAudioPlayer(contentsOf: url)
//            player?.play()
//        } catch let error{
//            print("Error playing sound. \(error.localizedDescription)")
//        }
//    }
//    
//}
//
//struct SwiftUIView: View {
//    @State var counter = 0
//    var body: some View {
//        NavigationStack {
//            ZStack{
//                
//                Color.SBlue
//                    .ignoresSafeArea()
//                VStack{
//                    Text(" وَفِي ذَٰلِكَ فَلْيَتَنَافَسِ الْمُتَنَافِسُونَ")
//                    Text("سورة المطففين - آية ٢٦")
//                    Text("\(counter)")
//                        .bold()
//                        .font(Font.system(size:70))
//                        .frame(width: 300,height: 190)
//                        .background(.white)
//                        .cornerRadius(20)
//                        .overlay(
//                            RoundedRectangle(cornerRadius: 20)
//                                .stroke(Color.LGray, lineWidth: 1)
//                        )
//                        .blur(radius: 1)
//                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                        .padding()
//                    
//                    
//                    HStack{
//                        Button(action: {
//                            self.counter -= 1;
//                            SoundManager.instance.playSound()
//                            
//                        }, label: {
//                            Text("-")
//                                .bold()
//                                .font(Font.system(size: 125))
//                                .foregroundColor(Color.DBlue)
//                                .frame(width: 110 , height: 110)
//                                .background(Color.white)
//                                .cornerRadius(100)
//                                .overlay( /// apply a rounded border
//                                    RoundedRectangle(cornerRadius: 150)
//                                        .stroke(Color.LGray, lineWidth: 1)
//                                )
//                                .blur(radius: 1)
//                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                                .padding(.trailing,30)
//                        })
//                        Button(action: {
//                            self.counter += 1;
//                            SoundManager.instance.playSound()
//                        }, label: {
//                            Text("+")
//                                .bold()
//                                .font(Font.system(size: 75))
//                                .foregroundColor(Color.DBlue)
//                                .frame(width: 110 , height: 110)
//                                .background(Color.white)
//                                .cornerRadius(100)
//                                .overlay( /// apply a rounded border
//                                    RoundedRectangle(cornerRadius: 150)
//                                        .stroke(Color.LGray, lineWidth: 1)
//                                )
//                                .blur(radius: 1)
//                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                            
//                        })
//                    }.padding(.top,50)
//                }
//            }
//        }
//    }
//}
//struct SwiftUIView_Previews: PreviewProvider {
//    static var previews: some View {
//        SwiftUIView()
//    }
//}
