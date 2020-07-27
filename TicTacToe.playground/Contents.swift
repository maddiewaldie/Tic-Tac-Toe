/*
* TicTacToe.playground
*
*  Created on: July 24, 2020
*  Authors: Sylvia Chin, Maya Borowicz, Lucinda Quintal, Sydney Schrader, and Madeleine Waldie
*  Version: 1.0
*/

class TicTacToe {
    // "empty" board used as a reference for different functions. should remain constant throughout ("let" keyword enforces this)
    var board = [["1", "2", "3"], ["4", "5", "6"], ["7", "8", "9"]]
    // playingBoard is the "editable" board that changes with user input, necessary for checkWinLossTie() to work.
    var playingBoard = [["X", "X", "X"], ["4", "X", "6"], ["7", "X", "9"]]

    //this variable can be used to check across functions to see if the game has ended (changed in checkWinLossTie())
    var gameOver = false

    var player1:String
    var player2:String

    init(player1:String, player2:String) {
        self.player1=player1
        self.player2=player2
    }

    // Maddie - Display intro
    func displayIntro() -> Void {
        // Messages
        print("Welcome to TicTacToe!\n")
        print("Player 1, \(player1) has mark X.\n")
        print("Player 2, \(player2) has mark O.\n")
        print("Use the board below as a reference for where to place your tokens when playing.")
        
        // Reference board
        displayBoard(board:board)
    }
    
    // Everyone - Board
    func displayBoard(board:[[String]]) -> Void {
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
    func checkValid(move: Int, moveString: String /*enter the move as a string too because i cant figure out another way to check the board if you do let me know!*/) -> Bool {
        if move > 0 && move < 10 {
            return true
        }
        for i in 0 ... 2{
            for j in 0 ... 2{
                if board[i][j] == moveString{
                    return false
                }
            }
        }
        return false
    }

    // Maya - Switching from x to o (2 player)
    //This function will happen at the end of every players turn so that the next player will place the opposite symbol
    //idea:
        //message that player1 should move
        //user will input number to correspond with position, x will be placed
        //*the function will switch so that o will be placed next move*
        //player2 imputs number
        //*the function will switch so that x will be placed next move*
    func switchPlayer() -> Void {
        var XorO = "X"
        if XorO == "X"{
           XorO = "O"
        }
        else if XorO == "O"{
            XorO = "X"
        }
        
    }

    // Maddie - Update board to indicate where player placed their X or O
    func updateBoard(number: String, token: String) -> Void{
        // Update board array
        for i in 0...2 {
            for j in 0...2 {
                if number == playingBoard[i][j] {
                    playingBoard[i][j] = token
                }
            }
        }
        // Display new board
        print("\n")
        displayBoard(board: playingBoard)
        
        // Check if it;s a win/loss/tie
        checkWinLossTie(location: number, activeMark: token)
    }


    // Lucinda - Checking for wins / losses / ties
    func checkWinLossTie(location:String, activeMark:String) -> Void {
        var activePlayer:String;
        // assigns the variable activePlayer based on the activeMark (used in output of win message)
        if(activeMark=="X") {
            activePlayer = player1
        } else {
            activePlayer = player2
        }

        if(horizontalWin(location:location)||verticalWin(location:location)||diagonalWin(location:location)) {
            print("\(activePlayer) has won as mark \(activeMark)!")
            displayBoard(board:playingBoard)
            gameOver = true;
        } else if (boardIsFull()) {
            print("This game is a tie!")
        }

    }
    // checks if there is horizontal row with all matching characters from reference point "location" (number the user entered)
    func horizontalWin(location:String) -> Bool {
        // finds the row and column of the user's most current marking location, only the row (for horizontal) will be used
        let (row,col) = getIndex(location:location)
        // checks if each of the 3 spaces in that row are the same mark
        if(these3AreTheSame(one:playingBoard[row][0], two:playingBoard[row][1], three:playingBoard[row][2])) {
            return true
        }
        return false
    }
    // checks if there is vertical column with all matching characters from reference point "location" (number the user entered)
    func verticalWin(location:String) -> Bool {
        // finds the row and column of the user's most current marking location, only the col (for vertical) will be used
        let (row,col) = getIndex(location:location)
        // checks if each of the 3 spaces in that column are the same mark
        if(these3AreTheSame(one:playingBoard[0][col], two:playingBoard[1][col], three:playingBoard[2][col])) {
            return true
        }
        return false
    }

    func diagonalWin(location:String) -> Bool {
        // checks if the diagonal 3 from the top left to the bottom right are the same mark
        let leftRightWin = these3AreTheSame(one:playingBoard[0][0],two:playingBoard[1][1],three:playingBoard[2][2])
        // checks if the diagonal 3 from the top right to the bottom left are the same mark
        let rightLeftWin = these3AreTheSame(one:playingBoard[0][2],two:playingBoard[1][1],three:playingBoard[2][0])

        if(leftRightWin || rightLeftWin) {
            return true
        }
        return false
    }

    func getIndex(location:String) -> (Int,Int) {
        var row = 0
        var col = 0
        for i in 0...2 {
            for j in 0...2 {
                if(board[i][j] == location) {
                    row = i
                    col = j
                }
            }
        }
        return (row,col)
    }

    func these3AreTheSame(one:String, two:String, three:String) -> Bool{
        if(one == two && two == three) {
            return true
        }
        return false
    }

    func boardIsFull() -> Bool{
        for i in 0...2 {
            for j in 0...2 {
                // if this playingBoard cell is neither X nor O, then the board is not full, so false is returned
                if (playingBoard[i][j] != "X" && playingBoard[i][j] != "O") {
                    return false
                }
            }
        }
        return true
    }



    // Sylvia - Display game over / congrats message
    func displayGameOver() -> Void {
        print ("Game Over!")
//        playAgain()
    }
    
    // Sydney - Ask if players want to play again
    func playAgain() -> Bool {
        displayScore()
        print("Would you like to play again? 1 for yes 2 for no")
        let answer = readLine()
        if answer == "1"{
            for i in 0 ... 2{
                for j in 0 ... 2{
                    playingBoard[i][j] = " " //empties playing board
                }
            }
            return true
        }else if answer == "2"{
            gameOver = true
            return false
        }
        return false
    }
    
    //make array with players and their wins
    var scores = [[tictactoe.player1, 0],[tictactoe.player2, 0]]
    
    // Maya - Display score
    func displayScore() -> Void {
        //print statement giving wins for each player
        print("The score is \(scores[0][1]) wins for \(tictactoe.player1) and \(scores[1][1]) wins for \(tictactoe.player2)")
    }
    
    func addWinToScores(player: String) -> Void{
        if player == "1"{
            scores[0][1] = 1
        }
        else if player == "2"{
            scores[1][1] += 1
        }
    }
    
    func isGameOver() -> Bool {
        return gameOver
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

// displays intro message
tictactoe.displayIntro()

// main code
while !tictactoe.isGameOver() {
    tictactoe.getUserInput()
}


