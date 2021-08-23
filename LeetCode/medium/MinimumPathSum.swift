import UIKit

//Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.
//
//Note: You can only move either down or right at any point in time.

func minPathSum(_ grid: [[Int]]) -> Int {
    var x: Int = 0
    var y: Int = 0
    var gridCopy = grid
    var rows: Int = gridCopy.count
    var cols: Int = 0
    if(rows == 0) {
        return 0
    }
    if(rows > 0) {
        cols = gridCopy[0].count
    }
    if(cols == 0) {
        return 0
    }
    while y < rows{
        x = 0
        while x < cols {
            // point not on axis
            if(x != 0 && y != 0) {
                gridCopy[y][x] += min(gridCopy[y-1][x], gridCopy[y][x-1])
            }
                // point on y axis
            else if(x != 0 && y == 0) {
                gridCopy[y][x] += gridCopy[y][x-1]
            }
                // point on x axis
            else if(x == 0 && y != 0) {
                gridCopy[y][x] += gridCopy[y-1][x]
            }
            x += 1
        }
        y += 1
    }
    
    return gridCopy[rows-1][cols-1]
}

