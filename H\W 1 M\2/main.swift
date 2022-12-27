//
//  main.swift
//  H\W 1 M\2
//
//  Created by Рауль on 21/12/22.
//

import Foundation

class Car {
    var name: String
    var marka: String
    var speed: Int
    var color: String
    func Update(name:String, marka:String, speed:Int, color:String) {
    print("Тюнинг: машина - \(name), марка - \(marka), скорость - \(speed), цвет - \(color)")
    }
    init(name: String, marka: String, speed: Int, color: String) {
        self.name = name
        self.marka = marka
        self.speed = speed
        self.color = color
    }

    func showInfo() {
     print("\(name), \(marka), \(speed), \(color)")
        Update(name: "Honda", marka: "CRV", speed: 250, color: "Black" )
    }

}
var car = Car(name: "Honda", marka: "CRV", speed: 200, color: "Black")
var carArray: [Car] = [car]
for i in carArray {

    i.Update(name: "Honda", marka: "CRV", speed: 250, color: "Grey")
}





class Shop{
    var name:String
    var tovar: [Tovar] = [Tovar] ()
    init(name: String) {
        self.name = name
    }
    func showInfo() {
        print(name)
        for i in tovar {
            print("Product name - \(i.name), cost - \(i.cost)")
        }
    }
    func addTovar(add:Tovar) {
        tovar.append(add)
    }
}

class Tovar {
    var name:String
    var cost:Int
    init(name: String, cost: Int) {
        self.name = name
        self.cost = cost
    }
    func showInfo(){
        print("\(name), \(cost)")
    }
}
var shop = Shop(name: "globus")
var cola = Tovar(name: "Cola", cost: 50)
shop.addTovar(add: cola)
shop.showInfo()



/* Создать класс "Банк" и "Клиент"
создать функции для:
1) Подсчета клиентов банка
2) Отображения баланса по ID или фамилии клиента
3) Перевода средств от клиента к другому клиенту
*/


class Bank {
    var bank:String
    var count:Int
    var client:[Client] = [Client]()
    init(bank: String, count: Int) {
        self.bank = bank
        self.count = count
    }
    func showInfo() {
        print("\(bank), \(count)")
        for bank1 in client{
            print("клиент по номеру \(bank1.clientCount), вашe отображение по ID \( bank1.Id), перевод стредств \(bank1.otherClient)")

        }
    }
    func podchet(podchet:Client) {
        client.append(podchet)
    }
}
var bank = Bank(bank: "optima", count: 32)

class Client {
    var clientCount: Int
    var Id: Int
    var otherClient:Int
    init(clientCount: Int, Id: Int, otherClient: Int) {
        self.clientCount = clientCount
        self.Id = Id
        self.otherClient = otherClient
    }
    func showInfo() {
        print("\(clientCount), \(Id), \(otherClient)")

        }
    }
var client1 = Client(clientCount: 4, Id: 90, otherClient: 3)
var client2 = client1
client2.clientCount += Int.random(in: 1...100)
var idd = client1
idd.Id += Int.random(in: 1...100)
var perevod = client1
perevod.otherClient += Int.random(in: 500...10000)
bank.podchet(podchet: client1)
bank.podchet(podchet: client2)
bank.showInfo()
