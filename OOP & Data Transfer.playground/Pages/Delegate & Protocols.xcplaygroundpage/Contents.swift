
//Delegate & protocols data transfer
import Foundation

protocol CounterDelegate {
    func increment() -> Void
}

class Counter: CounterDelegate {
    private var value: Int = 0 {
        didSet { print("Counter value: \(value)") }
    }
    
    func increment() {
        self.value += 1
    }
}

class Control {
    private var delegate: CounterDelegate
    
    init(delegate: CounterDelegate) {
        self.delegate = delegate
    }
    
    func buttonClicked() {
        self.delegate.increment()
    }
}

let counter = Counter()
let control = Control(delegate: counter)

control.buttonClicked()
// Counter value: 1
control.buttonClicked()
