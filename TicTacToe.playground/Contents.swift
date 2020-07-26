/*
* TicTacToe.playground
*
*  Created on: July 24, 2020
*  Authors: Sylvia Chin, Maya Borowicz, Lucinda Quintal, Sydney Schrader, and Madeleine Waldie
*  Version: 1.0
*/

class TicTacToe {
    var board = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]

    var player1:String
    var player2:String

    //this variable can be used to check across functions to see if the game has ended (changed in checkWinLossTie())
    var gameOver = false

    init(player1:String, player2:String) {
        self.player1=player1
        self.player2=player2
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
        return false
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
//        checkWinLossTie(number:location, token:activeMark)
        // Display new board
        print("\n")
        displayBoard()
    }

    // Lucinda - Checking for wins / losses / ties
//    func checkWinLossTie(location:String, activeMark:String) -> Void {
//        var activePlayer = String {
//            if(activeMark=="X") {
//                return player1
//            }
//            return player2
//        }
//
//        if(checkForHorizontalWin()||checkForVerticalWin()||checkForDiagonalWin()) {
//            print("\(activePlayer) has won as mark \(activeMark)!")
//            gameOver = true;
//        } else if (boardIsFull()) {
//            print("This game is a tie!")
//        }
//
//        //TODO: make functions checkForHorizontalWin(), checkForVerticalWin(), checkForDiagonalWin(), and boardIsFull()
//        //above all have return type Bool
//
//    }

    
    // Sylvia - Display game over / congrats message
    func displayGameOver() -> Void {
        print ("Game Over!")
//        playAgain()
    }
    
    // Sydney - Ask if players want to play again
    func playAgain() -> Bool {
        print("Would you like to play again? 1 for yes 2 for no")
        let answer = readLine()
        if answer == "1"{
            return true
        }else if answer == "2"{
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


//players input their name which is stored in the temporary variables p1name and p2name
print("Enter Player 1 (X) name: ")
let p1name = readLine()!
print("Enter Player 2 (O) name: ")
let p2name = readLine()!

//creates an instance of the game TicTacToe with both players' names
var tictactoe = TicTacToe(player1:p1name, player2:p2name)

tictactoe.displayIntro()
print("Player 1, \(tictactoe.player1) has mark X")
print("Player 2, \(tictactoe.player2) has mark O")
//tictactoe.updateBoard()