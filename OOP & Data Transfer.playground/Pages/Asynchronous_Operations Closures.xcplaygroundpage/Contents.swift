//Async operation or completion handler or @escaping

func givenData(text: String, handler: @escaping(String) -> Void ) {
    handler("Hello \(text)")
}

let data: () = givenData(text: "World") { str in
    print(str)
}

func greeting(completon: @escaping(String) -> Void) {
  
    completon("Hello")

}

let hello: () = greeting { str in
    print("greeting \(str)")
}
//Get data from closures @escaping without return anythings
//Condtional completion

func numberData(num: Int , completion: @escaping(String) -> Void) {
    if num % 2 == 0 {
        completion("Even Number")
    }else {
        completion("Odd Number")
    }
}

numberData(num: 100) { numberStaus in
    print(numberStaus)
}
