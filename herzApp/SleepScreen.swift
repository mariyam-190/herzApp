//
//  SleepScreen.swift
//  herzApp
//
//  Created by mariyam yasin on 09/06/1445 AH.
//

import SwiftUI

struct SleepScreen: View {
        @EnvironmentObject var viewModel: ViewModel
        
        var  textsm = ["{ ٱللَّهُ لَاۤ إِلَـٰهَ إِلَّا هُوَ ٱلۡحَیُّ ٱلۡقَیُّومُۚ لَا تَأۡخُذُهُۥ سِنَةࣱ وَلَا نَوۡمࣱۚ لَّهُۥ مَا فِی ٱلسَّمَـٰوَ ٰ⁠تِ وَمَا فِی ٱلۡأَرۡضِۗ مَن ذَا ٱلَّذِی یَشۡفَعُ عِندَهُۥۤ إِلَّا بِإِذۡنِهِۦۚ یَعۡلَمُ مَا بَیۡنَ أَیۡدِیهِمۡ وَمَا خَلۡفَهُمۡۖ وَلَا یُحِیطُونَ بِشَیۡءࣲ مِّنۡ عِلۡمِهِۦۤ إِلَّا بِمَا شَاۤءَۚ وَسِعَ كُرۡسِیُّهُ ٱلسَّمَـٰوَ ٰ⁠تِ وَٱلۡأَرۡضَۖ وَلَا یَـُٔودُهُۥ حِفۡظُهُمَاۚ وَهُوَ ٱلۡعَلِیُّ ٱلۡعَظِیمُ } [البقرة: 255].", 
                       "«آمَنَ الرَّسُولُ بِمَا أُنْزِلَ إِلَيْهِ مِنْ رَبِّهِ وَالْمُؤْمِنُونَ ۚ كُلٌّ آمَنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ لَا نُفَرِّقُ بَيْنَ أَحَدٍ مِنْ رُسُلِهِ ۚ وَقَالُوا سَمِعْنَا وَأَطَعْنَا ۖ غُفْرَانَكَ رَبَّنَا وَإِلَيْكَ الْمَصِيرُ(285 ) لَا يُكَلِّفُ اللَّهُ نَفْسًا إِلَّا وُسْعَهَا لَهَا مَا كَسَبَتْ وَعَلَيْهَا مَا اكْتَسَبَتْ رَبَّنَا لَا تُؤَاخِذْنَا إِنْ نَسِينَا أَوْ أَخْطَأْنَا رَبَّنَا وَلَا تَحْمِلْ عَلَيْنَا إِصْرًا كَمَا حَمَلْتَهُ عَلَى الَّذِينَ مِنْ قَبْلِنَا رَبَّنَا وَلَا تُحَمِّلْنَا مَا لَا طَاقَةَ لَنَا بِهِ وَاعْفُ عَنَّا وَاغْفِرْ لَنَا وَارْحَمْنَا أَنْتَ مَوْلَانَا فَانْصُرْنَا عَلَى الْقَوْمِ الْكَافِرِينَ(286)» ",
                       
    
                       " الحمد لله الذي أطعمنا وسقانا وكفانا وآوانا، فكم ممن لا كافي له ولا مؤوي.",
        "كان النبي ﷺ يضع يده تحت خده ثم يقول: اللهم قني عذابك يوم تبعث عبادك.",
                       " باسمك اللهم أموت وأحيا",
                       "اللهم رب السماوات ورب الأرض ورب كل شيء، فالق الحب والنوى منزل التوراة والإنجيل والقرآن، أعوذ بك من شر كل ذي شر أنت آخذ بناصيته، أنت الأول فليس قبلك شيء وأنت الآخر فليس بعدك شيء وأنت الظاهر فليس فوقك شيء وأنت الباطن فليس دونك شيء اقضِ عنّا الدين وأغننا من الفقر.",
                       "بسم الله وضعت جنبي، اللهم اغفر لي ذنبي وأخسئ شيطاني وفك رهاني، واجعلني في الندي الأعلى‪.‬",
                       " كان النبي ﷺ ينفض فراشه ثم يقول: باسمك ربي وضعت جبني وبك أرفعه، إن أمسكت نفسي فارحمها، وإن أرسلتها فاحفظها بما تحفظ به عبادك الصالحين.",
                       " اللهم خلقت نفسي وأنت توفاها، لك مماتها ومحياها، إن أحييتها فاحفظها، وإن أمتها فاغفر لها، اللهم إني أسألك العافية.",
                       " اللهم أسلمت وجهي إليك، وفوضت أمري إليك، وألجأت ظهري إليك، رغبةً ورهبةً إليك، لا ملجأ ولا منجا منك إلا إليك، اللهم آمنت بكتابك الذي أنزلت، وبنبيك الذي أرسلت.",
                       
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
                        Image(.sleep)
                            .resizable()
                            .frame(width:100 , height: 100)
                            .padding(.top , -40)
                            .padding()
                         Text("اذكار النوم")
                            .font(.custom("AA-GALAXY",size: 32))
                        Text("\(currentText)")
                            .bold()
                            .multilineTextAlignment(.center)
                            .font(Font.system(size:20))
                            .padding()
                            .padding(.top , -20)
                            .frame(width: 340,height: 340)
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
        struct SleepScreen_Previews: PreviewProvider {
            static var previews: some View {
                SleepScreen()

            }
        }

