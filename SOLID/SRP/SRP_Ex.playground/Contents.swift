import Foundation

func calculate(value1:Int, value2:Int, op:String) -> Int {
    switch op {
    case "+":
        return value1 + value2
    case "-":
        return value1 - value2
    default:
        return 0
    }
}

func plusCalculate(value1:Int, value2:Int) -> Int {
    return value1 + value2
}
func minusCalculate(value1:Int, value2:Int) -> Int {
    return value1 - value2
}



// 자동차
// 엔진 활성, 비활성
// 앞으로 감, 멈춤

class Car0 {
    private var engine: Bool = false
    
    func engineStart() {
        // 엔진이 돌기 위한 로직
        engine = true
    }
    func engineStop() {
        // 엔진이 꺼지기 위한 로직
        engine = false
    }
    // 출발
    func depart() {
        if engine == true {
            print("출발~!")
        } else {
            print("출발 실패! 엔진이 꺼져 있습니다.")
        }
    }
}

class Engine0 {
    private var engine: Bool = false
    
    
}

class Car1 {
    func engineStart() {
        print("2기통 엔진 활성화 완료")
    }
    
    func depart() {
        engineStart()
        print("출발!")
    }
}

// 2기통 엔진 자동차만 사용 가능
let car = Car1()
car.depart()

protocol Engine {
    func engineStart()
}

class Car2 {
    private let engine: Engine
    
    init(engine: Engine) {
        self.engine = engine
    }
    
    func depart() {
        engine.engineStart()
        print("출발!")
    }
}

class Engine2: Engine {
    func engineStart() {
        print("2기통 엔진 활성화 완료")
    }
}
class Engine4: Engine {
    func engineStart() {
        print("4기통 엔진 활성화 완료")
    }
}

// 2기통 엔진 자동차 사용
let car2 = Car2(engine: Engine2())
car2.depart()
// 4기통 엔진 자동차 사용
let car4 = Car2(engine: Engine4())
car4.depart()

class Car {
    private var engine: Bool = false
    
    func depart() {
        if engine == true {
            print("출발!")
        }
    }
    func engineStart() {
        self.engine = true
        // 시동이 켜질 때 작동하는 추가 로직들
    }
}


//class Calculator {
//    func plus() { // 덧셈 로직 }
//    func minus() { // 뺄셈 로직 }
//    func multiple() { // 곱셈 로직 }
//    func divide() { // 나눗셈 로직 }
//    // 그 이외의 많은 연산들
//}

class Calculator {
    private let plusCalculator: PlusCalculator = PlusCalculator()
    private let minusCalculator: MinusCalculator = MinusCalculator()
    private let multipleCalculator: MultipleCalculator = MultipleCalculator()
    private let divideCalculator: DivideCalculator = DivideCalculator()
    
    func plus() {
        plusCalculator.plus()
    }
    func minus() {
        minusCalculator.minus()
    }
    func multiple() {
        multipleCalculator.multiple()
    }
    func divide() {
        divideCalculator.divide()
    }
}

class PlusCalculator {
    func plus() {
        // 덧셈 로직
    }
}
class MinusCalculator {
    func minus() {
        // 뺄셈 로직
    }
}
class MultipleCalculator {
    func multiple() {
        // 곱셈 로직
    }
}
class DivideCalculator {
    func divide() {
        // 나눗셈 로직
    }
}
