//
//  main.swift
//  1L_TsygankovaTatiana
//
//  Created by Цыганкова Татьяна on 27.09.2018.
//  Copyright © 2018 Цыганкова Татьяна. All rights reserved.
//

import Foundation

// Задание 1
// Решение квадратного уравнения
// a, b, c - коэффициенты квадратного уравнения:
// ax^2 + bx + c = 0
func solveQuadraticEquation(_ a: Float, _ b: Float, _ c: Float) {
    print("Уравнение \(a)x^2 + \(b)x + \(c) = 0")
    
    var D: Float = 0
    var x1: Float = 0
    var x2: Float = 0
    
    D = b*b-4*a*c
    if D>0 {
        x1=(-b+sqrt(D))/(2*a)
        x2=(-b-sqrt(D))/(2*a)
        print("имеет два корня:")
        print("x1: \(x1)");
        print("x2: \(x2)");
    } else if D==0 {
        print("имеет один корень:")
        x1=(-b+sqrt(D))/(2*a)
        print("x1: \(x1)")
    } else {
        print("не имеет корней")
    }
    print()
}

solveQuadraticEquation(-2,3,2)
solveQuadraticEquation(1,-6,9)
solveQuadraticEquation(5,3,7)

// Задание 2
//Вычисление площади, периметра, гипотенузы прямоугольного треугольника
// а, b - катеты
func triangleParameters(_ a: Float, _ b: Float) {
    print("Катеты прямоугольного треугольника: \(a), \(b)")
    
    let S: Float = a*b/2
    let H: Float = sqrt(a*a+b*b)
    let P: Float = a+b+H
    
    print("Площадь: \(S)")
    print("Периметр: \(P)")
    print("Гипотенуза: \(H)")
}

triangleParameters(4,3)
triangleParameters(77,55)

// Задание 3
// Вычисление суммы вклада
// amount - начальная сумма
// percent - годовой процент
// years - количество лет
func depositAmount(_ amount: Float, _ percent: Float, _ years: Int) -> Float {
    var result: Float = amount;
    let deviser = pow(10.0,Float(2)) // для округления до 2-х десятичных знаков
    for _ in 1...years {
        result += result*percent/100
    }
    result = round(result*deviser)/deviser // округление
    return result
}

// Консольный ввод значения типа float
// prompt - сообщение-приглашение к вводу
func input(_ prompt: String) -> Float {
    print(prompt)
    if let input = readLine()
    {
        if let sum = Float(input)
        {
            return sum
        }
    }
    return 0
}

let sum = input("Введите первоначальную сумму вклада:")
let percent = input("Введите годовой процент:")
let years = 5

let result = depositAmount(sum,percent,years)
print( "Первоначальная сумма вклада \(sum), Годовой процент: \(percent)")
print( "Сумма вклада через \(years) лет: \(result)")

