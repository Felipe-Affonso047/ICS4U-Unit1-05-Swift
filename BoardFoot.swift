/*
* The "Board foot" program it gives the length of a board foot.
*
* @author  Felipe Garcia Affonso
* @version 1.0
* @since   2021-11-24
*/

// Swift "Board foot" Program

import Foundation

enum MyError: Error {
  case invalidDouble(String)
}

func boardFootCalculator(width: String, height: String) throws -> Double {
  let widthDouble: Double = Double(width)!
  let heightDouble: Double = Double(height)!
  let BOARDFOOT: Double = 144.0
  let length: Double = BOARDFOOT / (widthDouble * heightDouble)
  return length
}

print("What is the width of the wood?")
let input1 = readLine()

print("What is the height of the wood?")
let input2 = readLine()

do {
  let length: Double
  try length = boardFootCalculator(width: input1!, height: input2!)
  print("\nThe length to make it one board foot of wood is :\(length) inches.")
} catch {
  print("\nError, please make sure the input follow the parameters asked.")
}

print("\nDone.\n")
