import UIKit

var greeting = "Hello, playground"

var str = "Hello, swift"
str = "Hello world"

var age = 20
// age = "Hi" -> Int 타입으로 이미 지정되어서 String 타입 넣을 수 없음

// 큰 숫자는 "_" 를 써서 읽기 쉽게 숫자를 표현할 수 있음
var money = 2_000_000
var price = 1000200

var name = "Jason"
name = "Jin"

var gpa = 4.5
var isEnabled = false

var height = 100
var text = "his height is \(height) "

let dj = "koo"
// dj = "goo" -> 시도하면 에러 발생, 상수는 할당된 값을 변경할 수 없기 때문

// 명시적 타입 기입 없을 때 -> 타입 추론
var weeks = 10
var token = "qwer123"

// 명시적 타입 기입
var days: Int = 5
var userName: String = "Jake"
