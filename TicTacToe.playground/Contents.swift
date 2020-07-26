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
        print ("Enter a number corresponding to the board to make your move.")
        //not done
    }

    // Sydney - Check validity of move
    func checkValid(move: Int) -> Bool {
        //check move variable with numbers
        /*if move != "X" || move != "O"{ //help, how should i check if an x or o is there?
            return true
        }else{
            return false
        }*/
    }

    // Maya - Switching from x to o (2 player)
    func switchPlayer() -> Void {
        
    }

    // Maddie - Update board to indicate where player placed their X or O
    func updateBoard(number: String, token: String) -> Void{
        // Update board array
        for i in 0...2 {
            for j in 0...2 {
                if number == board[i][j] {
                    board[i][j] = token
                }
            }
        }

        // Display new board
        print("\n")
        displayBoard()
    }

    // Lucinda - Checking for wins / losses / ties
    func checkWinLossTie() -> Void {
        
    }
    
    // Sylvia - Display game over / congrats message
    func displayGameOver() -> Void {
        print ("Game Over!")
        playAgain()
    }
    
    // Sydney - Ask if players want to play again
    func playAgain() -> Bool {
        print("Would you like to play again? 1 for yes 2 for no")
        let answer = readLine()
        if answer == 1{
            return true
        }else if answer == 2{
            return false
        }else{
            return false
        }
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