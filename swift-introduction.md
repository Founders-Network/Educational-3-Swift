#Intro to Swift and Programming
Welcome to the Swift educational! The information provided in this document will simply for a quick introduction to Swift, its syntax and some basic programming knowledge. 

First things first, open up your Xcode. Press on "Get started with a playground" and we'll be on our way.

*Note: if you want to see the value of any variables at any time, simply type the variable name on the editor and its value will be shown in the right-hand margin*

##Variables and Constants
In your playground, you should see the following code: 
```swift
var str = "Hello, playground"
```
That would be how we define a variable, which is a name that represents a piece of information, whether it be text, integers or a boolean (true or false).
Here are some other ways of declaring and initializing values:
```swift
myVariable = 42
let myConstant = 50
let explicitDouble : Double = 50.0
```
<br />**Try this yourself!**<br />
As tradition suggests, one's first program in a language is often "Hello world". Let's change it up a bit and print "Hello, playground" (hint: you can use the variable defined as str).
In Swift, to print something we just use the write:
```swift
print("put whatever you want in here")
```

##Arrays and Dictionaries
An array is essentially a list of information, and a dictionary is data structure that allows for a key and a value associated with the key. 
```swift
var emptyArray = [String]()
var anotherEmptyArray = []
var shoppingList = ["apples", "banana", "bread"]
shoppingList[1] = "coconut water"

var emptyDictionary = [String: Float]()
var anotherEmptyDictionary = [:]
var animalSounds = [
  "dog" : "woof"
  "cat" : "meow"
]
```
<br />**Try this yourself!**<br />
Add your own animal and animal sound into the dictionary, *animalSounds*. Follow the same kind of format that was used to add another shopping list item.

##Control Flow and Functions
Explained in the educational...
```swift
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
  var min = scores[0]
  var max = scores[0]
  var sum = 0
  
  for score in scores {
    if score > max {
      max = score
    } else if score < min {
      min = score 
    }
    sum += score
  }
  return (min, max, sum)
}
let statistics = calculateStatistics([5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.1)
```
<br />**Try this yourself!**<br />
Print out the smallest of the given numbers in the array.



