import Foundation

//struct ChineseRestaurant {
//    let orders: [String] = ["짜장면", "짜장면", "짬뽕", "짬뽕", "짜장면"]
//
//    func serveOrders() {
//        for order in orders {
//            if order == "짜장면" {
//                print("짜장면 나왔습니다~!")
//            } else if order == "짬뽕" {
//                print("짬뽕 나왔습니다~!")
//            }
//        }
//    }
//}
//
//ChineseRestaurant().serveOrders()

//struct ChineseRestaurant {
//    // 주문에 탕수육 추가, OCP 위배
//    let orders: [String] = ["짜장면", "탕수육", "짜장면", "짬뽕", "짬뽕", "짜장면", "탕수육"]
//
//    func serveOrders() {
//        for order in orders {
//            if order == "짜장면" {
//                print("맛있는 짜장면 나왔습니다~!") // 로직 수정, OCP 위배
//            } else if order == "짬뽕" {
//                print("맛있는 짬뽕 나왔습니다~!") // 로직 수정, OCP 위배
//            } else if order == "탕수육" {
//                print("맛있는 탕수육 나왔습니다~!") // 로직 수정, OCP 위배
//            }
//        }
//    }
//}

//protocol OrderStrategy {
//    func serve()
//    func canAccept(order: Order) -> Bool
//}
//
//struct JajangmyeonOrder: OrderStrategy {
//    func serve() {
//        print("짜장면 나왔습니다~!")
//    }
//    func canAccept(order: Order) -> Bool {
//        return order == .jajangmyeon
//    }
//}
//
//struct JjambbongOrder: OrderStrategy {
//    func serve() {
//        print("짬뽕 나왔습니다~!")
//    }
//    func canAccept(order: Order) -> Bool {
//        return order == .jjambbong
//    }
//}
//
//enum Order: String {
//    case jajangmyeon, jjambbong
//}
//
//
//struct ChineseRestaurant {
//    let strategies: [OrderStrategy]
//    let orders: [Order]
//    
//    init(strategies: [OrderStrategy], orders: [Order]) {
//        self.strategies = strategies
//        self.orders = orders
//    }
//    
//    func serve(strategy: OrderStrategy) {
//        strategy.serve()
//    }
//    
//    func serveOrders() {
//        for order in orders {
//            strategies.filter { $0.canAccept(order: order) }.first?.serve()
//        }
//    }
//
//}
//
//let restaurant = ChineseRestaurant(strategies: [JajangmyeonOrder(), JjambbongOrder()], orders: [.jajangmyeon, .jajangmyeon, .jjambbong, .jjambbong, .jajangmyeon])
//restaurant.serveOrders()

protocol OrderStrategy {
    func serve()
    func canAccept(order: Order) -> Bool
}

struct JajangmyeonOrder: OrderStrategy {
    func serve() {
        print("맛있는 짜장면 나왔습니다~!")
    }
    func canAccept(order: Order) -> Bool {
        return order == .jajangmyeon
    }
}

struct JjambbongOrder: OrderStrategy {
    func serve() {
        print("맛있는 짬뽕 나왔습니다~!")
    }
    func canAccept(order: Order) -> Bool {
        return order == .jjambbong
    }
}

struct SweetSourPork: OrderStrategy { // 탕수육 전략 추가
    func serve() {
        print("맛있는 탕수육 나왔습니다~!")
    }
    func canAccept(order: Order) -> Bool {
        return order == .sweetSourPork
    }
}

enum Order: String {
    case jajangmyeon, jjambbong, sweetSourPork
}


struct ChineseRestaurant {
    let strategies: [OrderStrategy]
    let orders: [Order]
    
    init(strategies: [OrderStrategy], orders: [Order]) {
        self.strategies = strategies
        self.orders = orders
    }
    
    func serve(strategy: OrderStrategy) {
        strategy.serve()
    }
    
    func serveOrders() {
        for order in orders {
            strategies.filter { $0.canAccept(order: order) }.first?.serve()
        }
    }

}

let restaurant = ChineseRestaurant(strategies: [JajangmyeonOrder(), JjambbongOrder()], orders: [.jajangmyeon, .jajangmyeon, .jjambbong, .jjambbong, .jajangmyeon])
restaurant.serveOrders()
