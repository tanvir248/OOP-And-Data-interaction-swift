// Advance inheritance RND

class BTViewController {
    var searchPlaceholderText = "Search" {
        didSet {
            print("Changed text = \(searchPlaceholderText)")
        }
    }
    func changeSearchPlaceHolder(text: String) {
        searchPlaceholderText = text
    }
}
class AuthorDetailsAudioBook: BTViewController {
    
//    func changeSearchPlaceHolder() {
//        searchPlaceholderText  = "Changed"
//        print(searchPlaceholderText)
//    }
    override func changeSearchPlaceHolder(text: String) {
        searchPlaceholderText = text
        print(searchPlaceholderText)
    }
}

var obj = AuthorDetailsAudioBook()
print(obj.searchPlaceholderText)
var obj2 = BTViewController()
obj.changeSearchPlaceHolder(text: "kabbik audioBook")
obj2.changeSearchPlaceHolder(text: "kabbik audioBook2")
print(obj2.searchPlaceholderText)
