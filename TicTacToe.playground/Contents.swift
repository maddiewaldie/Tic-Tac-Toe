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


var tictactoe = TicTacToe()

tictactoe.displayIntro()
