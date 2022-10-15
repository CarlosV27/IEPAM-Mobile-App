////
////  DataModel.swift
////  IEPAM-App
////
////  Created by Sergio on 10/10/22.
////
//
//import SwiftUI
//import SwiftyJSON
//
//class DataModel: ObservableObject {
//    @Published var dimensions = [Dimension]()
//    @Published var tests = [Test]()
//    @Published var testsFiltered = [Test]()
//    @Published var answers = [Answer]()
//    @Published var answersFiltered = [Answer]()
//    @Published var questions = [Question]()
//    @Published var questionsFiltered = [Question]()
//    @Published var currentPam = PAM.emptyPAM
//    @Published var testRange = [TestRange]()
//
//    init(){
//        loadDimensions()
//    }
//
//    func loadDimensions(){
//        dimensions.removeAll()
//
//        guard let url = self.url(forResource: "dimension.json", withExtension: nil) else{
//            fatalError("Could not find")
//        }
//    }
//}
//
