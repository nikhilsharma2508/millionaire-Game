//
//  classfile.swift
//  millionairegame
//
//  Created by Krishna on 09/11/21.
//

import Foundation

class Ques {
    
    let que: String
    let optA: String
    let optB: String
    let optC: String
    let optD: String
    let correctans: Character
    let difficultylevel: Int
    
    init(que: String, optA: String, optB: String, optC: String, optD: String, correctans: Character, difficultylevel: Int){
        self.que = que
        self.optA = optA
        self.optB = optB
        self.optC = optC
        self.optD = optD
        self.correctans = correctans
        self.difficultylevel = difficultylevel
    }
    
}

protocol hint {
    //requirements code
    func fifty()
    func audiencepoll()
    
}

class Gamelevel : hint{
    func fifty() {
        
    }
    
    func audiencepoll() {
        
    }
    
    var questionlist = [Ques]()
    
    init() {
    
        questionlist.append(Ques(que: "Total number of continents in the World is ....", optA: "A. 5", optB: "B. 6", optC: "C. 7 ", optD: "D. 8", correctans: "C", difficultylevel: 1))
        
        questionlist.append(Ques(que: "Which one is the largest ocean in the World?", optA: "A. Indian", optB: "B. Pacific", optC: "C. Atlantic", optD: "D. Arctic", correctans: "B", difficultylevel: 1))
        
        questionlist.append(Ques(que: "Dead Sea is located between which two countries...", optA: "A. Jordan and Sudan", optB: "B. Jordan and Israel", optC: "C. Turkey and UAE", optD: "D. UAE and Egypt", correctans: "B", difficultylevel: 1 ))
        
        questionlist.append(Ques(que: "Which country gifted the 'Statue of Liberty' to USA in 1886? ", optA: "A. French", optB: "B. Canada", optC: "C. Brazil", optD: "D. Finland ", correctans: "A", difficultylevel: 1 ))
        
        questionlist.append(Ques(que: "Which one is the largest producer of tea in the World?", optA: "A. India", optB: "B. Shri Lanka ", optC: "C. Pakistan ", optD: "D. China", correctans: "D", difficultylevel: 1 ))
    
        
        
        
        questionlist.append(Ques(que: "World Trade Organization came into existence in.... ", optA: "A. 1995", optB: "B. 1997", optC: "C. 1994", optD: "D. 1996", correctans: "A", difficultylevel: 2))
        
        questionlist.append(Ques(que: "The Central Rice Research Station is situated in? ", optA: "A. Chennai", optB: "B. Cuttack", optC: "C. Bangalore ", optD: "D. Quilon", correctans: "B", difficultylevel: 2))
        
        questionlist.append(Ques(que: "A byte consists of", optA: "A. One bit", optB: "B. Two bits", optC: "C. Six bits", optD: "D. Eight Bits", correctans: "D", difficultylevel: 2))
        
        questionlist.append(Ques(que: "IC chips used in computers are usually made of.. ", optA: "A. Lead", optB: "B. Silicon", optC: "C. Chromium", optD: "D. Gold", correctans: "B", difficultylevel: 2 ))
        
        questionlist.append(Ques(que: "Which of the following is not an example of an Operating System? ", optA: "A. Windows 98", optB: "B. BSD Unix", optC: "C. Microsoft Office XP", optD: "D. Red Hat Linux", correctans: "C", difficultylevel: 2))
        
        
        
        questionlist.append(Ques(que: "Compact discs, (according to the original CD specifications) hold how many minutes of music?", optA: "A. 74 mins", optB: "B. 90 mins", optC: "C. 50 mins", optD: "D. 80 mins", correctans: "A", difficultylevel: 3))
        
        questionlist.append(Ques(que: "Which of the following is used to Manage DataBase? ", optA: "A. DBMS", optB: "B. Operating System", optC: "C. Compiler", optD: "D. None", correctans: "A", difficultylevel: 3 ))
        
        questionlist.append(Ques(que: "'.MOV' extension refers usually to what kind of file?", optA: "A. Image file", optB: "B. Animation/movie file", optC: "C. Audio file", optD: "D. MS Office document", correctans: "B", difficultylevel: 3 ))
        
        questionlist.append(Ques(que: "What does SSL stand for? ", optA: "A. Secure Socket Layer", optB: "B.  System Socket Layer", optC: "C. Superuser System Login", optD: "D. Secure System Login", correctans: "A", difficultylevel: 3))
        
        questionlist.append(Ques(que: "Which of the following are components of Central Processing Unit (CPU) ? ", optA: "A. Arithmetic logic unit, Mouse", optB: "B. Arithmetic logic unit, Integrated Circuits", optC: "C. Arithmetic logic unit, Control unit", optD: "D. Control Unit, Monitor", correctans: "C", difficultylevel: 3 ))
    }
    
    
}

