class Bird {
    func fly() {
        print("Flying")
    }
}

class Sparrow: Bird {
    override func fly() {
        print("Flying like a sparrow")
    }
}

class Ostrich: Bird {
    override func fly() {
        fatalError("Ostriches cannot fly") // 재정의하지 않고 에러 발생
    }
}

func makeBirdFly(bird: Bird) {
    bird.fly()
}

// 사용 예시
let sparrow = Sparrow()
let ostrich = Ostrich()

makeBirdFly(bird: sparrow) // 출력: "Flying like a sparrow"
makeBirdFly(bird: ostrich) // 런타임 에러: "Ostriches cannot fly"

class Ostrich: Bird {
    override func fly() {
        print("Running like a ostrich") // fly() 의도에 맞지 않게 변형하여 구현
    }
}
// OR
class Ostrich: Bird {
    override func fly() {
        fatalError("Ostriches cannot fly")
    }
    func run() { // 부모가 정해주지 않은 새로운 함수 생성
            print("Running like a ostrich")
    }
}
