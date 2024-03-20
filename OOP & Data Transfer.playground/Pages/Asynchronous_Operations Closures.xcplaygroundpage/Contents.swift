//Async operation or completion handler or @escaping

//func givenData(text: String, handler: @escaping(String) -> Void ) {
//    handler("Hello \(text)")
//}
//
//let data: () = givenData(text: "World") { str in
//    print(str)
//}

func greeting(completon: @escaping(String) -> Void) -> Int {
  
    completon("Hello")

    return 0
}

let hello = greeting { str in
    print(str)
}
