//
//  AfterPrayerScreen.swift
//  herzApp
//
//  Created by mariyam yasin on 09/06/1445 AH.
//

import SwiftUI

struct AfterPrayerScreen: View {
   
            @EnvironmentObject var viewModel: ViewModel
            
            var  textsm = ["{ ٱللَّهُ لَاۤ إِلَـٰهَ إِلَّا هُوَ ٱلۡحَیُّ ٱلۡقَیُّومُۚ لَا تَأۡخُذُهُۥ سِنَةࣱ وَلَا نَوۡمࣱۚ لَّهُۥ مَا فِی ٱلسَّمَـٰوَ ٰ⁠تِ وَمَا فِی ٱلۡأَرۡضِۗ مَن ذَا ٱلَّذِی یَشۡفَعُ عِندَهُۥۤ إِلَّا بِإِذۡنِهِۦۚ یَعۡلَمُ مَا بَیۡنَ أَیۡدِیهِمۡ وَمَا خَلۡفَهُمۡۖ وَلَا یُحِیطُونَ بِشَیۡءࣲ مِّنۡ عِلۡمِهِۦۤ إِلَّا بِمَا شَاۤءَۚ وَسِعَ كُرۡسِیُّهُ ٱلسَّمَـٰوَ ٰ⁠تِ وَٱلۡأَرۡضَۖ وَلَا یَـُٔودُهُۥ حِفۡظُهُمَاۚ وَهُوَ ٱلۡعَلِیُّ ٱلۡعَظِیمُ } [البقرة: 255].",
                           "استغفر الله، استغفر الله، استغفر الله، اللهم أنت السلام ومنك السلام تباركت يا ذا الجلال والإكرام. ",
                           
                                "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، اللهم لا مانع لما أعطيت ولا معطي لما منعت، ولا ينفع ذا الجد منك الجد." ,
                           "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، لا حولا ولا قوة إلا بالله، لا إله إلا الله ولا نعبد إلا إياه، له النعمة وله الفضل وله الثناء الحسن، لا إله إلا الله مخلصين له الدين ولو كره الكافرون.",
                           "ربِّ قني عذابك يوم تبعث عبادك",
                           "اللهم إني أعوذ بك من البخل، وأعوذ بك من الجبن، وأعوذ بك من أن أرد إلى أرذل العمر، وأعوذ بك من فتنة الدنيا، وأعوذ بك من عذاب القبر.",
                           " اللهم اغفر لي ذنوبي وخطاياي كلها، اللهم أنعشني، واجبرني، واهدني لصالح الأعمال والأخلاق، إنه لا يهدي لصالحها، ولا يصرف سيئها إلا أنت.",
                           " اللهم أعني على ذكرك وشكرك وحسن عبادتك.",
                           "سبحان الله، الحمد لله (٣٣ مرة)، الله أكبر (٣٤ مرة)"
                           
            ]
            
            var texts = ["قلۡ هُوَ ٱللَّهُ أَحَدٌ (١) ٱللَّهُ ٱلصَّمَدُ (٢) لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ (٣) وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ (٤). (٣ مرات)", "قُلْ أَعُوذُ بِرَبِّ اِ۬لْفَلَقِ (١) مِن شَرِّ مَا خَلَقَ (٢ ) وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ (٣) وَمِن شَرِّ اِ۬لنَّفَّٰثَٰتِ فِے اِ۬لْعُقَدِ (٤) وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَۖ (٥). (٣ مرات)", "قُلۡ أَعُوذُ بِرَبِّ ٱلنَّاسِ (١) مَلِكِ ٱلنَّاسِ (٢ ) إِلَٰهِ ٱلنَّاسِ (٣ ) مِن شَرِّ ٱلۡوَسۡوَاسِ ٱلۡخَنَّاسِ (٤ ) ٱلَّذِي يُوَسۡوِسُ فِي صُدُورِ ٱلنَّاسِ (٥ ) مِنَ ٱلۡجِنَّةِ وَٱلنَّاسِ (٦). (٣ مرات)"
            ]
          
           
            
            @State private var currentIndex = 0
            @State private var countdown: Int = 3 // Initial countdown
            
            @State private var navigateToThird = false
            
            var body: some View {
                NavigationView {
                    ZStack{
                        Color.SBlue
                            .ignoresSafeArea()
                        VStack {
                            Image(.nabawiMosque)
                                .resizable()
                                .frame(width:105 , height: 125)
                                .padding(.top , -40)
                                .padding()
                             Text("اذكار بعد الصلاة ")
                                .font(.custom("AA-GALAXY",size: 32))
                            Text("\(currentText)")
                                .font(Font.system(size:20))
                                .multilineTextAlignment(.center)
                                .padding()
                                .padding(.top , -20)
                                .frame(width: 340,height: 350)
                                .background(.white)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 20)
                                        .stroke(Color.LGray, lineWidth: 1)
                                )
                                .blur(radius: 1)
        //                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            
                            HStack {
                                Button(action: {
                                    updateIndex(forward: false)
                                }) {
                                    Image(systemName: "chevron.right")
                                        .font(.title)
                                        .foregroundColor(.DBlue)
                                }
                                .padding()
                                
                                Button(action: {
                                    updateCountdown()
                                }) {
                                    Text("\(countdown)")
                                        .padding()
                                        .cornerRadius(10)
                                        .bold()
                                        .padding()
                                        .font(Font.system(size: 45))
                                        .foregroundColor(Color.DBlue)
                                        .frame(width: 110 , height: 110)
                                        .background(countdown > 0 ? Color.white : Color.gray)
                                        .cornerRadius(100)
                                        .overlay( /// apply a rounded border
                                            RoundedRectangle(cornerRadius: 150)
                                                .stroke(Color.DBlue, lineWidth: 3)
                                        )
                                        .blur(radius: 1)
        //                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                }
                                .disabled(countdown == 0)
                                .opacity(countdown == 0 ? 0.5 : 1.0)
                                .padding()
                                
                                Button(action: {
                                    updateIndex(forward: true)
                                }) {
                                    Image(systemName: "chevron.left")
                                        .font(.title)
                                        .foregroundColor(.DBlue)
                                }
                                .padding()
                            }
                        }
                        .background(
                            NavigationLink(
                                destination: ContentView(),
                                isActive: $navigateToThird,
                                label: {
                                    EmptyView()
                                })
                            .hidden()
                        )
                    }}
                }
                
                private var currentArray: [String] {
                    if currentIndex < texts.count {
                        return texts
                    } else {
                        return textsm
                    }
                }
                
                private var currentText: String {
                    return currentArray[currentIndex % currentArray.count]
                }
                
                private func updateCountdown() {
                    if countdown > 0 {
                        countdown -= 1
                    }
                    if countdown == 0 {
                        currentIndex += 1
                        resetCountdown()
                    }
                }
                
                private func updateIndex(forward: Bool) {
                    if forward {
                        currentIndex += 1
                        if currentIndex >= texts.count + textsm.count {
                            currentIndex = 0 // Wrap back to texts array
                        }
                    } else {
                        if currentIndex <= 0 {
                            currentIndex = texts.count +  textsm.count - 1 // Wrap to last texts100 element
                        } else {
                            currentIndex -= 1
                        }
                    }
                    resetCountdown()
                }
                
                private func resetCountdown() {
                    if currentIndex < texts.count {
                        countdown = 3
                    } else if currentIndex < texts.count {
                        countdown = 7
                    } else if currentIndex < texts.count  + textsm.count {
                        countdown = 1
                    } else {
                        countdown = 100
                    }
                }
        //    private func resetCountdown() {
        //        if currentIndex < texts.count + texts7.count + textsm.count {
        //            countdown = 1
        //        } else if currentIndex < texts.count{
        //            countdown = 3
        //        } else if  currentIndex < texts.count + texts7.count {
        //            countdown = 7
        //        } else {
        //            countdown = 100
        //        }
        //    }
            
            
            }


            // Preview
            struct AfterPrayerScreen_Previews: PreviewProvider {
                static var previews: some View {
                    AfterPrayerScreen()

                }
            }

