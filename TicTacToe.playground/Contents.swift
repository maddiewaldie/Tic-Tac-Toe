/*
* TicTacToe.playground
*
*  Created on: July 24, 2020
*  Authors: Sylvia Chin, Maya Borowicz, Lucinda Quintal, Sydney Schrader, and Madeleine Waldie
*  Version: 1.0
*/

class TicTacToe {
    var board = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]

    //this block creates and initializes a subclass so that the players have the attributes name and mark
    class player:TicTacToe {
        var name:String;
        var mark:String;

        init(name:String, mark:String) {
            self.name = name;
            self.mark = mark;
        }
    }


    // Maddie - Display intro
    func displayIntro() -> Void {
        print("Welcome to TicTacToe!\n")
        displayBoard()
    }
    
    // Everyone - Board
    func displayBoard() -> Void {
        print("----------------")
        for i in 0...2 {
            //print(i)
            print("| ", terminator:"")
            for j in 0...2 {
                //print(j)
                print(board[i][j], " | ", terminator:"")
            }
            print("\n----------------")
        }
        
        // Empty Board
    }

    // Sylvia - User Input
    func getUserInput() -> Void {
        
    }

    // Sydney - Check validity of move
    func checkValid() -> Bool {
        return true // placeholder
    }

    // Maya - Switching from x to o (2 player)
    func switchPlayer() -> Void {
        
    }

    // Maddie - Keys - Letters / Numbers show what position
    func updateBoard() -> Void{
        print("Enter String 1")

        let string = readLine(strippingNewline: true)!

        print(string)
    }

    // Lucinda - Checking for wins / losses / ties
    func checkWinLossTie() -> Void {
        
    }
    
    // Sylvia - Display game over / congrats message
    func displayGameOver() -> Void {
        
    }
    
    // Sydney - Ask if players want to play again
    func playAgain() -> Bool {
        return true // placeholder
    }
    
    // Maya - Display score
    func displayScore() -> Void {
        
    }

}


//----------------------------------------------
//EXECUTABLE CODE
//----------------------------------------------


//creates an instance of the game TicTacToe
var tictactoe = TicTacToe()

//players input their name which is stored in the temporary variables p1name and p2name
print("Enter Player 1 name: ")
let p1name = readLine()!
print("Enter Player 2 name: ")
let p2name = readLine()!

//creates two player objects, with the properties that were just inputted
var player1 = TicTacToe.player(name:p1name, mark:"X")
var player2 = TicTacToe.player(name:p2name, mark:"Y")

tictactoe.displayIntro()
print("Player 1, \(player1.name) has mark \(player1.mark)")
print("Player 2, \(player2.name) has mark \(player2.mark)")
//tictactoe.updateBoard()