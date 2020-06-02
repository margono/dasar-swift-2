import UIKit

/*--------- ARRAY ----------*/

// declaration empty array
var numbers = [Int]()
numbers.append(3)
numbers.append(5)
print("numbers = \(numbers)")
numbers.removeAll()
print("numbers = \(numbers)")
var cars: [String] = []

// declaration array with size and initial value
var alphabet = [Character](repeating: "C", count: 3)

// declaration array with value
var wordNumbers: [String] = ["One", "Two", "Three"]

// accessing array to get value by index
print(wordNumbers[1])

//modifying array
// - add element
wordNumbers.append("Four")
wordNumbers += ["Ten"]

//remove element
wordNumbers.remove(at: 1)

//modifying value of spesific element
wordNumbers[2] = "Eight"
print("wordNumbers = \(wordNumbers)")

//number of element in an array
print("size = \(wordNumbers.count)")

//check is empty array
print("isEmpty = \(wordNumbers.isEmpty)")

// adding 2 array
var ages : [Int] = [10,11,12]
var temp = numbers + ages
print(temp)


var characters = Array("Hello")
print(characters)

//array slice
let names = ["manny", "moe", "jack", "kar"]
let slice = names[1...2] // ["moe", "jack"]
print(slice[1])

var arraySlice = [1,2,3]
arraySlice[1..<2] = [7,8] // arr is now [1,7,8,3]
print("slice 7,8 = \(arraySlice)")
arraySlice[1..<2] = []    // arr is now [1,8,3]
print("slice kosong = \(arraySlice)")
arraySlice[1..<1] = [10]  // arr is now [1,10,8,3] (no element was removed!)
print("slice 1,1 = \(arraySlice)")
let arraySlice2 = [20,21]
//arr[1..<1] = arr2 // compile error! You have to say this:
arraySlice[1..<1] = ArraySlice(arraySlice2) // arr is now [1,20,21,10,8,3]
print("slice = \(arraySlice)")


/*--------- DICTIONARY ----------*/

var students = [String: String]()
print("students = \(students)")
var studentGrades:[String: Float] = [:]
print("studentGrades = \(studentGrades)")

var data = ["blogName": "arenasharing", "goal": "sharing"]

//get data from dictionary
let name = data["blogName"]

//add data to dictionary
data["extension"] = ".com"
data["goal"] = "Sharing about ios"
data["writer"] = "admin"

//update value from a specific key
data["blogName"] = "try duplicate name"
print("data dictionary = \(data)")
data["writer"] = nil
print("data dictionary after remove = \(data)")

//get all keys and values
let keys = [String](data.keys)
let values = [String](data.values)
keys.sorted()
values.sorted()

// create dictionary with two array
var cities = ["Japan", "Bangalore", "Hyderabad", "Jakarta", "Holand", "Paris"]
var distance = [400, 10, 620, 15, 150, 500, 11]

var cityDistanceDict = Dictionary(uniqueKeysWithValues: zip(cities, distance))
print("cityDistanceDict = \(cityDistanceDict)")

var closeCities = cityDistanceDict.filter { $0.value < 1000}
print("closeCities = \(closeCities)")

var groupingCities = Dictionary(grouping: cities) { $0.first! }
print("groupingCities = \(groupingCities)")



/*--------- SET ----------*/

// initialize empty set
var sizes = Set<Int>()

// initialize with values
var grades: Set = [55,90,20,45,23,88,44,69]
print("grades.isEmpty = \(grades.isEmpty)")
print("grades.count = \(grades.count)")

grades.insert(11)
print("grades after insert = \(grades)")
grades.remove(11)
print("grades after remove = \(grades)")

let gradesSorted = grades.sorted()
print("gradesSorted = \(gradesSorted)")

let otherGrades: Set = [78,23, 33,21, 90, 44]

let unionGrades = grades.union(otherGrades)
print("grade after union = \(unionGrades)")

let intersectionGrades = otherGrades.intersection(grades)
print("grades after intersect = \(intersectionGrades)")

let substractingGrades = grades.subtracting(otherGrades)
print("grades after substracting = \(substractingGrades)")

let differenceGrades = grades.symmetricDifference(otherGrades)
print("grade after difference = \(differenceGrades)")
