/*
* TicTacToe.playground
*
*  Created on: July 24, 2020
*  Authors: Sylvia Chin, Maya Borowicz, Lucinda Quintal, Sydney Schrader, and Madeleine Waldie
*  Version: 1.0
*/

class TicTacToe {
    var board = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
    
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
    
    // Lucinda - Set up players as x & o
    func setUpPlayers(name: String) -> Void {
        // enter name
        
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


var tictactoe = TicTacToe()

tictactoe.displayIntro()
tictactoe.updateBoard()
