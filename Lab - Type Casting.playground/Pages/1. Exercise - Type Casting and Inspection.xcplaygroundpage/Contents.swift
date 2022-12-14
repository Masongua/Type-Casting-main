/*:
## Exercise - Type Casting and Inspection

 Create a collection of type [Any], including a few doubles, integers, strings, and booleans within the collection. Print the contents of the collection.
 */
var coll: [Any] = [2.0, 3, "String", false, 4.5]
print(coll)
//:  Loop through the collection. For each integer, print "The integer has a value of ", followed by the integer value. Repeat the steps for doubles, strings and booleans.
for step in coll {
    if step is Int {
        print("The integer has a value of \(step)")
    } else if step is Double {
        print("The double has a value of \(step)")
    } else if step is String {
        print("The String has a value of \(step)")
    } else if step is Bool {
        print("The Boolean has a value of \(step)")
    }
}
//:  Create a [String : Any] dictionary, where the values are a mixture of doubles, integers, strings, and booleans. Print the key/value pairs within the collection
var dict: [String: Any] = ["m&m": 5.4, "candy": 3, "Airheads": false]

print(dict)
//:  Create a variable `total` of type `Double` set to 0. Then loop through the dictionary, and add the value of each integer and double to your variable's value. For each string value, add 1 to the total. For each boolean, add 2 to the total if the boolean is `true`, or subtract 3 if it's `false`. Print the value of `total`.
var total: Double = 0

for (_, valu) in dict {
    if let valu = valu as? Int {
        total += Double(valu)
    } else if let valu = valu as? Double {
        total += valu
    } else if let valu = valu as? String{
        total += 1
    } else if let valu = valu as? Bool {
        if valu == true{
            total += 2
        }
        else{
            total -= 3
        }
    }
}
print(total)
//:  Create a variable `total2` of type `Double` set to 0. Loop through the collection again, adding up all the integers and doubles. For each string that you come across during the loop, attempt to convert the string into a number, and add that value to the total. Ignore booleans. Print the total.
var total2: Double = 0

for (_, va) in dict {
    if let va = va as? Int {
        total2 += Double(va)
    } else if let va = va as? Double {
        total += va
    } 
}

/*:
page 1 of 2  |  [Next: App Exercise - Workout Types](@next)
 */
