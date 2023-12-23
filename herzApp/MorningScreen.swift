//
//  MorningScreen.swift
//  herzApp
//
//  Created by mariyam yasin on 09/06/1445 AH.
//

import SwiftUI

struct MorningScreen: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var  textsm = ["{ ٱللَّهُ لَاۤ إِلَـٰهَ إِلَّا هُوَ ٱلۡحَیُّ ٱلۡقَیُّومُۚ لَا تَأۡخُذُهُۥ سِنَةࣱ وَلَا نَوۡمࣱۚ لَّهُۥ مَا فِی ٱلسَّمَـٰوَ ٰ⁠تِ وَمَا فِی ٱلۡأَرۡضِۗ مَن ذَا ٱلَّذِی یَشۡفَعُ عِندَهُۥۤ إِلَّا بِإِذۡنِهِۦۚ یَعۡلَمُ مَا بَیۡنَ أَیۡدِیهِمۡ وَمَا خَلۡفَهُمۡۖ وَلَا یُحِیطُونَ بِشَیۡءࣲ مِّنۡ عِلۡمِهِۦۤ إِلَّا بِمَا شَاۤءَۚ وَسِعَ كُرۡسِیُّهُ ٱلسَّمَـٰوَ ٰ⁠تِ وَٱلۡأَرۡضَۖ وَلَا یَـُٔودُهُۥ حِفۡظُهُمَاۚ وَهُوَ ٱلۡعَلِیُّ ٱلۡعَظِیمُ } [البقرة: 255].", " اللهم أنت ربي لا إله إلا أنت، خلقتني وأنا عبدك وأنا على عهدك ووعدك ما استطعت، أعوذ بك من شر ما صنعت، أبوء لك بنعمتك عليّ، وأبوء لك بذنبي، فاغفر لي؛ فإنه لا يغفر الذنوب إلا أنت.", "اللهم إني أسألك العافية في الدنيا والآخرة، اللهم إني أسألك العفو والعافية في ديني ودنياي وأهلي ومالي،  اللهم استر عوراتي وآمن روعاتي، اللهم احفظني من بين يدي، وعن خلفي، وعن يميني، وعن شمالي، ومن فوقي، وأعوذ بعظمتك أن أغتال من تحتي." , "اللهم فاطر السماوات والأرض، عالم الغيب والشهادة، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت، أعوذ بك من شر نفسي، وشر الشيطان وشركه، وأن أقترف على نفسي سوءًا أو أجره إلى مسلم." , " يا حي يا قيوم، برحمتك استغيث، أصلح لي شأني كله، ولا تكلني إلى نفسي طرفة عين." , "أصبحنا وأصبح الملك لله، والحمدلله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيئ قدير، ربِّ أسألك خير ما في هذا اليوم وخير ما بعده، وأعوذ بك من شر ما في هذا اليوم وشر ما بعده، ربِّ أعوذ بك من الكسل وسوء الكبر، ربِّ أعوذ بك من عذاب في النار وعذاب في القبر." , "اللهم بك أصبحنا، وبك أمسينا، وبك نحيا، وبك نموت، وإليك النشور." , " اللهم ما أصبح بي من نعمة أو بأحد من خلقك، فمنك وحدك لا شريك لك." , " أصبحنا على فطرة الإسلام، وعلى كلمة الإخلاص، وعلى دين نبينا محمد ﷺ، وعلى ملة أبينا إبراهيم حنيفًا مسلمًا، وما كان من المشركين."]
    
    var texts = ["قلۡ هُوَ ٱللَّهُ أَحَدٌ (١) ٱللَّهُ ٱلصَّمَدُ (٢) لَمۡ يَلِدۡ وَلَمۡ يُولَدۡ (٣) وَلَمۡ يَكُن لَّهُۥ كُفُوًا أَحَدُۢ (٤). (٣ مرات)", "قُلْ أَعُوذُ بِرَبِّ اِ۬لْفَلَقِ (١) مِن شَرِّ مَا خَلَقَ (٢ ) وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ (٣) وَمِن شَرِّ اِ۬لنَّفَّٰثَٰتِ فِے اِ۬لْعُقَدِ (٤) وَمِن شَرِّ حَاسِدٍ إِذَا حَسَدَۖ (٥). (٣ مرات)", "قُلۡ أَعُوذُ بِرَبِّ ٱلنَّاسِ (١) مَلِكِ ٱلنَّاسِ (٢ ) إِلَٰهِ ٱلنَّاسِ (٣ ) مِن شَرِّ ٱلۡوَسۡوَاسِ ٱلۡخَنَّاسِ (٤ ) ٱلَّذِي يُوَسۡوِسُ فِي صُدُورِ ٱلنَّاسِ (٥ ) مِنَ ٱلۡجِنَّةِ وَٱلنَّاسِ (٦). (٣ مرات)"
    , " باسم الله الذي لا يضرُّ مع اسمه شيء في الأرض ولا في السماء، وهو السميع العليم (٣ مرات)." , "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت (٣ مرات)." , "رضيت بالله ربا، وبالإسلام دينا، وبمحمد ﷺ نبيا (٣ مرات)." , " سبحان الله وبحمده، عدد خلقه، ورضا نفسه، وزنة عرشه، ومداد كلماته (٣ مرات)." ]
    var texts100 = [" سبحان الله وبحمده", " لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير. (١٠٠ مرة)", "أستغفر الله وأتوب إليه"]
    var texts7 = [" حسبي الله لا إله إلا هو، عليه توكلت وهو رب العرش العظيم (٧ مرات)."]
   
    
    @State private var currentIndex = 0
    @State private var countdown: Int = 3 // Initial countdown
    
    @State private var navigateToThird = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.SBlue
                    .ignoresSafeArea()
                VStack {
                    Image(.sun)
                        .resizable()
                        .frame(width:115 , height: 115)
                        .padding(.top , -40)
                        .padding()
                    Text("اذكار الصباح")
                        .font(.custom("AA-GALAXY",size: 32))
                    JustifiedText("\(currentText)")
                        .bold()
                        .padding()
                        .frame(width: 340,height: 280)
                        .background(.white)
                        .cornerRadius(20)
                    
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.LGray, lineWidth: 1)
                        )
                        .blur(radius: 1)
                    //                        .shadow(radius: 10)
                    
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
                               
                                .font(Font.system(size: 35))
                                .foregroundColor(Color.DBlue)
                                .frame(width: 110 , height: 110)
                                .background(countdown > 0 ? Color.white : Color.gray)
                                .cornerRadius(100)
                                .overlay( /// apply a rounded border
                                    RoundedRectangle(cornerRadius: 150)
                                        .stroke(Color.DBlue, lineWidth: 3)
                                )
                                .blur(radius: 1)
                            //                                .shadow(radius: 10)
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
            } else if currentIndex < texts.count + texts7.count {
                return texts7
            } else if currentIndex < texts.count + texts7.count + textsm.count {
                return textsm
            } else {
                return texts100
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
                if currentIndex >= texts.count + texts7.count + textsm.count + texts100.count {
                    currentIndex = 0 // Wrap back to texts array
                }
            } else {
                if currentIndex <= 0 {
                    currentIndex = texts.count + texts7.count + textsm.count + texts100.count - 1 // Wrap to last texts100 element
                } else {
                    currentIndex -= 1
                }
            }
            resetCountdown()
        }
        
        private func resetCountdown() {
            if currentIndex < texts.count {
                countdown = 3
            } else if currentIndex < texts.count + texts7.count {
                countdown = 7
            } else if currentIndex < texts.count + texts7.count + textsm.count {
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
    struct JustifiedText: UIViewRepresentable {
      private let text: String
      private let font: UIFont

      init(_ text: String, font: UIFont = .systemFont(ofSize: 22)) {
        self.text = text
        self.font = font
      }

      func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        textView.font = font
        textView.textAlignment = .justified
        return textView
      }

      func updateUIView(_ uiView: UITextView, context: Context) {
          uiView.text = text
      }
    }

    
    }


    // Preview
    struct MorningScreen_Previews: PreviewProvider {
        static var previews: some View {
            MorningScreen()                        .environment(\.layoutDirection, .rightToLeft)


        }
    }

