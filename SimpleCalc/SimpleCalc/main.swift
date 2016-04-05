//
//  main.swift
//  SimpleCalc
//
//  Created by Annie Lace on 4/4/16.
//  Copyright © 2016 Annie Lace. All rights reserved.
//

import Foundation

//For Standard input reading
func input() -> String {
    let keyboard = NSFileHandle.fileHandleWithStandardInput()
    let inputData = keyboard.availableData
    let result = NSString(data: inputData, encoding:NSUTF8StringEncoding) as! String
    return result.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

//For converting strings to numbers
func convert(incoming:String) -> Int {
    return NSNumberFormatter().numberFromString(incoming)!.integerValue
}

func fact(number:Int) -> Int
{
    var result = 1
    for(var i = 1; i <= number; i += 1)
    {
        result = result * i;
    }
    return result;
}
print("Enter an expression separated by returns:")

var firstNum = convert(input());

var next = input();
switch next
{
    case "+": print("Result: \(firstNum + convert(input()))")
    case "-": print("Result: \(firstNum - convert(input()))")
    case "*": print("Result: \(firstNum * convert(input()))")
    case "/": print("Result: \(firstNum / convert(input()))")
    case "%": print("Result: \(firstNum % convert(input()))")
    case "fact": print("Result: \(fact(firstNum))")
    default: var count = 1
             var sum = firstNum
             while(next != "count" && next != "avg")
             {
                count += 1
                sum += convert(next)
                next = input()
             }
             if(next == "count")
             {
                print("Result: \(count)")
             }
             else
             {
                print("Result: \(sum / count)")
             }
}
