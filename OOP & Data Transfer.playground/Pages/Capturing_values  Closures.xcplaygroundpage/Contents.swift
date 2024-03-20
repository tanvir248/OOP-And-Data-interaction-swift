//Capturing values using closures

func addGivenNumber(number: Int) -> () -> Int {
    var total = 0
    return {
         total += number
        return total
    }
}

let addedNumber5 = addGivenNumber(number: 5)
print(addedNumber5()) // 5
print(addedNumber5()) // 10
print(addedNumber5()) // 15

let addedNumber10 = addGivenNumber(number: 10)
print(addedNumber10()) // 10
print(addedNumber10()) // 20
