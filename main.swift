import Foundation
print("if you finish please do 'ctrl-d' ")

var characters = String()
var arrayOfWords = [String]()


// read the files text 
// https://stackoverflow.com/questions/31778700/read-a-text-file-line-by-line-in-swift

var line : String?
repeat {
    line = readLine()
    if line != nil {
        for c in line! {
            characters.append(c)            
        }        
        arrayOfWords.append(characters)
        characters.removeAll()
    }
    
} while line != nil

// function that will sort the array
func sort (arrayOfString: [String]) -> [String] {
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


//function used to split the array
func divideArray(arrayOfString: [String], range: Range<Int>) -> [String] {
    let firstHalf = arrayOfString[range]
    let firstArray = Array(firstHalf)
    return firstArray    
}




// final result of the array sorted
var finalArray = [String]()
let first = divideArray(arrayOfString: arrayOfWords, range: 0 ..< arrayOfWords.count / 2)
let split1 = sort(arrayOfString: first)

let second = divideArray(arrayOfString: arrayOfWords, range: arrayOfWords.count / 2 ..< arrayOfWords.count)
let split2 = sort(arrayOfString: second)

for word in split1 {
    finalArray.append(word)
}
for word in split2 {
    finalArray.append(word)    
}
print()
let lastSort = sort(arrayOfString: finalArray)
for word in lastSort {
    print(word)
}

//print(sort(arrayOfString: finalArray))


