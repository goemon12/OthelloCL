import Foundation

let BLACK =  1
let WHITE = -1
var board = [
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 1,-1, 0, 0, 0],
    [0, 0, 0,-1, 1, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 0]
]
var turn = BLACK

func update() {
    var numBlack = 0
    var numWhite = 0

    var txt = ""
    for iy in 0 ..< 8 {
        for ix in 0 ..< 8 {
            txt += "+---"
        }
        txt += "+\n"
        for ix in 0 ..< 8 {
            switch (board[iy][ix]) {
            case BLACK:
                txt += "| X "
                numBlack += 1
            case WHITE:
                txt += "| O "
                numWhite += 1
            default:
                txt += "| \(iy)\(ix)"
            }
        }
        txt += "|\n"
    }
    for ix in 0 ..< 8 {
        txt += "+---"
    }
    txt += "+\n"
    txt += "X(黒):\(numBlack) O(白):\(numWhite)\n"
    
    if ((numBlack + numWhite >= 64) || (passCheck(color: BLACK) && passCheck(color: WHITE))) {
        txt += "ゲームオーバー"
    }
    else if ((turn == BLACK) && passCheck(color: BLACK)) {
        txt += "X(黒)はパス、O(白)のターンです"
    }
    else if ((turn == WHITE) && passCheck(color: WHITE)) {
        txt += "O(白)はパス、X(黒)のターンです"
    }
    else if (turn == BLACK) {
        txt += "X(黒)のターンです"
    }
    else {
        txt += "O(白)のターンです"
    }
    
    print(txt)
}

func passCheck(color: Int) -> Bool {
    return false
}

update()