//
//  main.swift
//  enumTaskStepik
//
//  Created by Rustam Aliyev on 17.10.2023.
//

import Foundation

//1. Создать enum с  названием TransportType. Создать 3 случая - airplane/train/car. Создать функцию для определения вебсайта, которая будет принимать в качестве аргумента TransportType и возвращать тип String В функции в зависимости от значения аргумента, возвращать www.airastana.com/www.bilet.railways.kz/www.indriver.com.

enum TransportType {
    case airplane
    case train
    case car
}

func findWebsite(transport: TransportType) -> String {
    var string = ""
    switch transport {
    case .airplane:
        string += "www.airastana.com"
    case .train:
        string += "www.bilet.railways.kz"
    case .car:
        string += "www.indriver.com."
    }
    return string
}

//var website = findWebsite(transport: TransportType.airplane)
//print(website)

//2. Создать enum с названием ShapeType. Создать 2 случая, circle/rectangle. Добавить связанные значения(associated value) на каждый случай, чтобы высчитать площадь фигуры. Создать функцию calculateArea,  которая будет принимать тип ShapeType в качестве аргумента и возвращать тип Double. В функции в зависимости от связанных значений, высчитывать площадь по-разному.

enum ShapeType {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
}

func calculateArea(figure: ShapeType) -> Double {
    var area: Double = 0
    switch figure {
    case .circle(radius: let radius):
        area = 3.14 * radius * radius
    case .rectangle(width: let width, height: let height):
        area = width * height
    }
    return area
}

//var area = calculateArea(figure: ShapeType.rectangle(width: 2, height: 3))
//print(area)

// 3. Создать enum с названием ResultType .Создать 2 случая, success/failure Добавить связанное значение типа (Int) для случая success Добавить связанное значение типа (String) для случая error
// Создать функцию с названием getGrade Добавить туда аргумент completion с типом (ResultType) -> Void (это closure Внутри функции создать переменную isSuccess типа Bool, которая случайно будет выбирать между true и false(google it). Далее если isSuccess == true  , нужно вызвать функцию, которая является аргументом getGrade , передав туда ResultType.success со значением 95 Если isSuccess == false, нужно также вызвать функцию которая является аргументом getGrade, передав туда ResultType.failure со значением "Grades not available yet, try again later"

enum ResultType {
    case success(Int)
    case failure(String)
}

func getGrade(completion: (ResultType) -> ()) {
    let isSuccess = Bool.random()
    if isSuccess == true {
        completion(ResultType.success(95))
    } else {
        completion(ResultType.failure("Grades not available yet, try again later"))
    }
}

//var a: () = getGrade { result in
//    print(result)
//}




