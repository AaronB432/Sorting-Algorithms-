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
print(arrayOfWords)

print(test(arrayOfString: arrayOfWords))





func test (arrayOfString: [String]) -> [String] {
    var sort = Array(arrayOfString)
    let count  = arrayOfString.count


    
    for i in 0 ..< count - 1 {
        for j in 0 ..< count - i - 1 {
            if sort[j] > sort [j + 1] {
                sort.swapAt(j, j + 1)
            }
        }
    }
    return sort
}
