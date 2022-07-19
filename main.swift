//
//  main.swift
//  millionairegame
//
//  Created by Krishna on 07/11/21.
//

import Foundation


// -------------------- classes and functions ----------------------------------


// ---------------------------------------------------------------------------------------------------------
func start(){
    
let level = Gamelevel() //Gamelevel class object
print("---- WHO WANTS TO BE MILLIONAIRE ----\n")

print("Enter player name:")
let name:String? = readLine()

print("\(name!)! Welcome to Quiz Game ")
print("1. Start Game \n2. Quit Game")
print("Enter your choice:")
let a:String? = readLine()
let startgame:Int? = Int(a!)

//------------- Game Start ------------------------
if(startgame == 1){
    
    var start:Int = 0
    var winningprice:Int = 0
    
    //shuffling array for random 3 ques
    level.questionlist.shuffle()
  
    
    var rounds = [1, 2, 3]
    
    
    for round in rounds {
        let questions = level.questionlist.filter({ $0.difficultylevel == round })
        // fetch question
        for index in rounds{
            print("\nQuestion Number: \(start+1)")
            let ques = questions[index]
            print(ques.que)
            print(ques.optA)
            print(ques.optB)
            print(ques.optC)
            print(ques.optD)
            print("Enter Your Answer:")
            let ans1:String! = readLine()
            var answer:Character = Character(ans1!)
        
            
           
            if answer == ques.correctans{
                print("Correct Answer")
               
                if start == 2 {winningprice = 10000}
                print("You win $\(winningprice)") // need to change after completing round
                
                
              
                
                print("Remaining Questions: \(9-(start+1))")
                if start == 2 || start == 5 || start == 6 || start == 7{
                    //print("Congratulations! Round Completed Successfully!")
                
                   
                    print("You want to play continue? (Y/N)")
                    let playanswer = readLine()
                    if playanswer == "Y"{
                        if start == 2{
                            start = 3
                            winningprice = 10000
                            continue}
                        else if start == 5{
                            start = 6
                            winningprice = 250000
                            continue}
                        else if start == 6{
                            start = 7
                            winningprice = 500000
                            continue}
                        else if start == 7{
                            start = 8
                            winningprice = 750000
                            continue}
                    }
                    else if playanswer == "N"{
                        exit(0)
                    }
                    else {
                        print("Invalid Choice")
                    }
                   
                }
            }
            else{
                print("Wrong Answer !!")
                print("Right answer is [\(ques.correctans)]")
                exit(0)
            }
            start += 1
        }
                
    }
    
   /* repeat{
        
        print("\nQuestion Number: \(i+1)")
       
        let easyquestions = level.questionlist.filter({ $0.difficultylevel == 1 })
        let mediumquestions = level.questionlist.filter({ $0.difficultylevel == 2 })
        let hardques = level.questionlist.filter({ $0.difficultylevel == 3 })
        if i < 4{
            
            print(level.easyquelist[i].que)
            print(level.easyquelist[i].optA)
            print(level.easyquelist[i].optB)
            print(level.easyquelist[i].optC)
            print(level.easyquelist[i].optD)
            
            print("Enter Your Answer:")
            let ans1:String! = readLine()
            var ans:Character = Character(ans1!)
           
            if ans == level.easyquelist[i].correctans{
                print("Correct Answer")
                print("Remaining Questions: \(9-(i+1))")
                if i == 2{
                    print("Congratulations! Round 1 Completed Successfully!")
                    print("You win \(winningprice)")
                   
                    print("You want to play continue? (Y/N)")
                    let playanswer = readLine()
                    if playanswer == "Y"{
                        i = 3
                        continue
                    }
                    else if playanswer == "N"{
                        break
                    }
                    else {
                        print("Invalid Choice")
                    }
                   
                }
            }
            else{
                print("Wrong Answer !!")
                print("Right answer is [\(level.easyquelist[i].correctans)]")
                break
            }
            
        }
        else if i < 7{
            print(level.moderatequelist[i-4].que)
            print(level.moderatequelist[i-4].optA)
            print(level.moderatequelist[i-4].optB)
            print(level.moderatequelist[i-4].optC)
            print(level.moderatequelist[i-4].optD)
            
            print("Enter Your Answer:")
            let ans1:String! = readLine()
            var ans:Character = Character(ans1!)
            if ans == level.moderatequelist[i].correctans{
                print("Correct Answer")
                print("Remaining Questions: \(9-(i+1))")
                
            }
            else{
                print("Wrong Answer !!")
                print("Right answer is [\(level.moderatequelist[i].correctans)]")
                break
            }
        }
        else if i < 10{
            print(level.hardquelist[i-7].que)
            print(level.hardquelist[i-7].optA)
            print(level.hardquelist[i-7].optB)
            print(level.hardquelist[i-7].optC)
            print(level.hardquelist[i-7].optD)
            
            let ans1:String! = readLine()
            var ans:Character = Character(ans1!)
            if ans == level.hardquelist[i].correctans{
                print("Correct Answer")
                print("Remaining Questions: \(9-(i+1))")
            }
            else{
                print("Wrong Answer !!")
                print("Right answer is [\(level.hardquelist[i].correctans)]")
                break
            }
        }
       
    i += 1
    }while i < 9*/
    
    
    
} // ------------- Quit Game -------------------------------
else if(startgame == 2){
   
    print("Game Quit Successfully")
    exit(0)
}
else{
    print("Invalid Choice")
}

}

let gamestart = start()


