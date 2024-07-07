class BuiltInKeyboard {
    func type() {
        print("Typing on built-in keyboard")
    }
}

class Laptop {
    let keyboard = BuiltInKeyboard()
    
    func useKeyboard() {
        keyboard.type()
    }
}

// 사용 예시
let myLaptop = Laptop()
myLaptop.useKeyboard()  // "Typing on built-in keyboard"


// 추상화된 프로토콜
protocol Keyboard {
    func type()
}

// 구체적인 구현 1: Normal 키보드
class NormalKeyboard: Keyboard {
    func type() {
        print("Typing on normal keyboard")
    }
}

// 구체적인 구현 2: LED 키보드
class LEDKeyboard: Keyboard {
    func type() {
        print("Typing on led keyboard")
    }
}

// 데스크탑 클래스는 추상화된 프로토콜에 의존
class Desktop {
    var keyboard: Keyboard
    
    init(keyboard: Keyboard) {
        self.keyboard = keyboard
    }
    
    func useKeyboard() {
        keyboard.type()
    }
}

// 사용 예시
let normalKeyboard = NormalKeyboard()
let ledKeyboard = LEDKeyboard()

let myDesktopWithUSB = Desktop(keyboard: normalKeyboard)
myDesktopWithUSB.useKeyboard()

// result
// "Typing on USB keyboard"

let myDesktopWithBluetooth = Desktop(keyboard: ledKeyboard)
myDesktopWithBluetooth.useKeyboard()  

// result
// "Typing on Bluetooth keyboard"
