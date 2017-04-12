//
//  ViewController.swift
//  SwiftGame
//
//  Created by Mattias Tengzelius on 2017-04-11.
//  Copyright © 2017 Mattias Tengzelius. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var TextViewOne: UITextView!
    @IBOutlet weak var TextViewTwo: UITextView!
    @IBOutlet weak var textViewSum: UITextView!

    @IBOutlet weak var PrimeOneTxtView: UITextField!
    @IBOutlet weak var PrimeTwoTxtView: UITextField!
    @IBOutlet weak var PrimeTableView: UITableView!
    
    let instanceOfDice = RollDices()
    
    var Start = 0
    var Stop = 0
    var counter = 0
    var comparisons = 0
    var prime = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PrimeTableView.delegate = self
        PrimeTableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    

    @IBAction func DiceOne(_ sender: Any) {
        instanceOfDice.RollDiceOne()
       TextViewOne.text! = String(instanceOfDice.diceSum)
        textViewSum.text! = String(instanceOfDice.diceSum + instanceOfDice.diceSum2)
        diceValueIs()
    }
    
    @IBAction func DiceTwo(_ sender: Any) {
        instanceOfDice.RollDiceTwo()
        TextViewTwo.text! = String(instanceOfDice.diceSum2)
        textViewSum.text! = String(instanceOfDice.diceSum + instanceOfDice.diceSum2)
        diceValueIs()
    }
    
    @IBAction func RollAllDices(_ sender: Any) {
        instanceOfDice.RollDiceOne()
        instanceOfDice.RollDiceTwo()
        TextViewOne.text! = String(instanceOfDice.diceSum)
        TextViewTwo.text! = String(instanceOfDice.diceSum2)
        textViewSum.text! = String(instanceOfDice.diceSum + instanceOfDice.diceSum2)
        diceValueIs()
    }
    @IBAction func PrimeButton(_ sender: Any) {
    
        getPrimes()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getPrimes(){
        Start = Int(PrimeOneTxtView.text!)!
        Stop = Int(PrimeTwoTxtView.text!)!
    
        while Start < Stop{
            counter = 2
            prime = true
            
            while counter < Start {
                comparisons += 1
                print(comparisons)
                    if Start % counter == 0{
                        prime = false
                    } else {
                        print("HEJ")
                }
            Start += 1
            }
        }
//        while number < stop:
//        prime = True
//        counter = 2
//        
//        # kollar om counter(2) är mindre än number.
//        while counter < number:
//        comparison += 1
//        #om resten av (number / counter) blir 0 så kör detta
//        if number % counter == 0
//        prime = False
//        break
//        
//        counter = counter + 1
//        
//        if prime:
//        print("Talet " + str(number) + "är ett primtal.")
//        primtal += 1
//        
//        number += 1
//        
//        print("antal beräkningar" + str(omparison))

    }
    
    func diceValueIs(){
        if (instanceOfDice.diceSum + instanceOfDice.diceSum2 > 30 || instanceOfDice.diceSum + instanceOfDice.diceSum2 < 10) {
            self.performSegue(withIdentifier: "hejsan", sender: self)
            
            print("value apparently were bigger then 17")
        }
        else {
            return
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "NoteCell", for: indexPath) as!  PrimeTableViewCell
        
        cell.PrimeLabelCell.text! = ""

        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 0
    }

}
