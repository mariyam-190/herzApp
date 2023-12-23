//
//  AzkarModel.swift
//  herzApp
//
//  Created by mariyam yasin on 03/06/1445 AH.
//
import Foundation


class ViewModel: ObservableObject{
    
    
    @Published  var items3 = ["سورة الإخلاص","سورة الناس","سورة الفلق","اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري لا إله الا انت"]
    
    @Published  var items1M = ["اللهم بك اصبحنا وبك امسيناوبك نحيا وبك نموت وإليك النشور"]
    
    @Published  var items100 = ["استغفر الله"]
    
    @Published  var items7 = ["حسبي الله لا إله الا هو عليه توكلت وهو رب العرش العظيم"]
    
    var texts = ["First", "Second", "Third"]
    var texts100 = ["First100", "Second100", "Third100"]
    var texts7 = ["First7", "Second7", "Third7"]
    var textsm = ["m1", "m2", "m3"]


}
