print("if you finish please type 'solve' ")

var characters = String()
var arrayOfWords = [String]()


var line : String?
repeat {
    line = readLine()
    
    for character in line! {
        characters.append(character)        
    }
    arrayOfWords.append(characters)
    characters.removeAll()


} while line != "solve"





func test (arrayOfString: [String]) -> [String] {
    var sort = Array(arrayOfString)
    let count = arrayOfString.count
    
    for i in 0 ..< count - 1 {
        for j in 0 ..< count - i - 1 {
            if sort[j] > sort [j + 1] {
                sort.swapAt(j, j + 1)
            }
        }
    }
    return sort
}
// continue to imporve this section of the code so that we can take the input and put it here to split it
// then use the test function to organize the arrays and later merge them
func divideArray(arrayOfString: [String], range: Range<Int>) -> [String] {
    let firstHalf = arrayOfString[range]
    let firstArray = Array(firstHalf)
    return firstArray    
}

var finalArray = [String]()
let first = divideArray(arrayOfString: arrayOfWords, range: 0 ..< arrayOfWords.count / 2)
let split1 = test(arrayOfString: first)

let second = divideArray(arrayOfString: arrayOfWords, range: arrayOfWords.count / 2 ..< arrayOfWords.count)
let split2 = test(arrayOfString: second)

for word in split1 {
    finalArray.append(word)
}
for word in split2 {
    finalArray.append(word)
}
print(finalArray)
