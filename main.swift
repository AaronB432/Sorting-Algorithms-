print("if you finish please type 'solve' ")

var characters = String()
var arrayOfWords = [String]()
var arrayOfInts = [Int]()

var line : String?
repeat {
    line = readLine()
   
    for character in line! {
        characters.append(character)        
        let value = valueOfLetter(inputLetter: character)     
        arrayOfInts.append(value)
    }
    arrayOfWords.append(characters)
    characters.removeAll()
    print(test(arrayOfInt: arrayOfInts))
} while line != "solve"

// func for switching the string
// make a func to test the numbers if it concludes that it is less than, switch. Otherwise leave alone.


func test (arrayOfInt: [Int]) -> [Int]{
    var sort = Array(arrayOfInt)
    let count  = arrayOfInt.count
    let alphabet = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    for i in 0 ..< count - 1 {
        for j in 0 ..< count - i - 1 {
            if sort[j] > sort [j + 1] {
                sort.swapAt(j, j + 1)
            }
        }
    }
       
    return sort
}




func valueOfLetter(inputLetter: Character) -> Int{
    var number = 0
    let alphabet = [ "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    for (index, letter) in alphabet.enumerated() {
        if letter == inputLetter.lowercased() {
            number += index
        }
        

    }
    return number
}




print(arrayOfWords)


