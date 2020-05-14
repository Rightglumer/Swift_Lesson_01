import Foundation

// QUADTRATIC EDUCATION
func readCoefficient() -> Double! {
    var retValue : Double!
    if let strValue = readLine() {
        retValue = Double(strValue)
    } else {
        retValue = 0
    }
    return retValue
}
 
 print("QUADRATIC EDUCATION")
 print("")
 
var coefA : Double!
var coefB : Double!
var coefC : Double!
var descr : Double!
var solut : Double! = 0

print("Please, input education's coefficient:")
print("Coefficient A")
coefA = readCoefficient()
print("Coefficient B")
coefB = readCoefficient()
print("Coefficient C")
coefC = readCoefficient()
print("Your education is:")
print("\(String(describing: coefA!))*X^2 + \(String(describing: coefB!))*X + \(String(describing: coefC!)) = 0")
descr = coefB * coefB - 4.0 * coefA * coefC
print("Descriminant is \(String(describing: descr!))")
if descr < 0 {
    print("Sorry, the education hasn't solution")
    solut = -1
}
if descr == 0 {
    solut = -1.0 * coefB / (2.0 * coefA)
    print("There are only one solution: \(String(describing: solut))")
}
if descr > 0 {
    let sDescr = descr.squareRoot()
    let bottom = 2.0 * coefA
    let topLeft = -1.0 * coefB
    solut = (topLeft + sDescr) / bottom
    print("The first solution is \(String(describing: solut!))")
    solut = (topLeft - sDescr) / bottom
    print("The second solution is \(String(describing: solut!))")
}

print("Please, press <Enter> to continue")
readLine()

// QUADTRATIC TRIANGLE
var catet1 : Double!
var catet2 : Double!
var hypten : Double!

print("QUADRATIC TRIANGLE")
print("")
 
print("Please, enter catet 1")
catet1 = readCoefficient()
print("Please, enter catet 2")
catet2 = readCoefficient()
hypten = sqrt(catet1 * catet1 + catet2 * catet2)
print("The area of the triangle is \(0.5 * catet1 * catet2)")
print("The perimeter of the triangle is \(hypten + catet1 + catet2)")
print("The hypotenuse of the triangle is \(String(describing: hypten!))")
 
 print("Please, press <Enter> to continue")
 readLine()

// DEPOSIT
var amount : Double!
var rate : Double!
var percent : Double!
var termYears : Double! = 5

print("DEPOSIT AMOUNT")
print("")

print("Please, enter your deposit amount")
amount = readCoefficient()
print("Please, enter your deposit rate")
rate = readCoefficient() / 100
percent = round((amount * rate * termYears) * 100.0) / 100.0
print("All term percent amount is \(String(describing: percent!))")
print("Total amount will be \(String(describing: percent + amount))")

print("")
print("")
