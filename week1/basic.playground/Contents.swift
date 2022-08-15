import UIKit
import CoreFoundation

//Git & GitHub
//2
/*
git status: The git status command displays the state of working directory and the staging area. It             lets you see which changes have been staged, which haven't, and which files aren't being           tracked by Git.
git add: To add files to be in next commit(these files are temporary stored in staging area)
git commit: A snapshot in time of your work. Whenever you want to keep a snapshot of your current work          at local, you can use git commit
git log: Show list of recent commits in the current branch’s history
git push [Repo_name] [Branch_name]: To transit local branches(all changes which are committed at                                        local) to remote repo branches
git remove -v: To check the version of remote repo in cloud
git branch: Show the list of all your branches
fork: Take the entire copy of the repo and replicate it in one’s personal user space. You can write       and push changes back to your own fork. And if you’d like to share with original repo, use pull    request.
*/

//3
/*
To establish a GitHub repo:
 1. click the "+" button on the nav bar
 2. choose New Repository
 3. fill in Repository name
 4. click Create repository button
To upload the local projects to GitHub
 1. use bash to cd into the target directory
 2. $ git init
 3. working on your local files
 4. $ git add . //(add all ur current changes to staging area)
 5. $ git commit -m "<leave_message_here>" //commit with your message
 6. $ git remote add origin <remote_repo_link> //add remote repo to local file
 7. $ git push origin //push local commit to remote repo
*/



//Basic
//1
let Pi: Double = 3.14

//2
let x: Int = 1
let y: Int = 2
var average: Double = (Double(x)+Double(y))/2

//3
//Explanation:
//If you use Int data type, the average should also be Int. And this can reult to the lost of numbers after decimal.
//So, if you want to keep the correct answer(with decimal), use Double data type for variable a & b. Or coercion while calculating
let a1: Int = 65
let b1: Int = 65
let a2: Double = 65;
let b2: Double = 65;

var average1: Int = (a1+b1)/2
var average2: Double = (a2+b2)/2
var average3: Double = (Double(a1)+Double(b1))/2

//4
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//5
var salary: Int = 22000
salary += 28000

//6
//Equality operatpr '=='
//further check if two objects' references are the same '==='


//7
let const1: Int = 10
let const2: Int = 3
let remainder = 10 % 3

//8
//let: immutable. You can't change its value later
//var: mutable. You can change the variable value later

//9
//using UpperCamelCase for types and protocols, lowerCamelCase for everything else
//For function:
//a. if there is no return data, use verb for function name
//b. if there is a retrun data, use noun or verb the noun for function name

//10
//If you didn't declare a data type for a variable, Swift can figure out the type of the variable based on initial value

//11
//The initial data type of the first value is Int, so the Swift Type Inference make the phoneNumber variable as Int. But the second line want to change the phoneNumber to String, therefore, error shows.


//Collection
//1
var myFriends: [String] = []

//2
myFriends += ["Ian", "Bomi", "Kevin"]

//3
myFriends.append("Michael")

//4
myFriends.swapAt(0, 2)

//5
for friend in myFriends {
    print(friend)
}

//6
//myFriends[5] will result to "Index out of range error", since myFriends count is 4 and its index only includes 0, 1, 2, 3

//7
myFriends.first

//8
myFriends.last

//9
var myCountryNumber: [String: Int] = [:]

//10
myCountryNumber["US"] = 1
myCountryNumber["GB"] = 44
myCountryNumber["JP"] = 81

//11
myCountryNumber.updateValue(0, forKey: "GB")

//12
//method 1
var emptyDic: [String: Int] = [:]
//method 2
var emptyDic1 = [String: Int]()

//13
//use removeValue() with the element key which you want to remove


//Control Flow
//1
let lottoNumbers = [10, 9, 8, 7, 6, 5]
let lottoLen = lottoNumbers.count

for i in lottoLen-3...lottoLen-1{
    print(lottoNumbers[i])
}

//2
var i = 5
var j = 10
for n in i...j {
    print(n)
}
for k in (6...j).reversed() {
    if k % 2 == 0 {
        print(k)
    }
}

//3
i = 5
j = 10
while i < 10 || j >= 6 {
    if i > 10 {
        print(j)
        j -= 2
        continue
    }
    print(i)
    i += 1
}

//4
i = 5
j = 10
repeat {
    if i >= 10 {
        print(j)
        j -= 2
    }
    if i <= 10 {
        print(i)
    }
    i += 1
} while i <= 10 || j >= 6

//5
//while loop check the condition statement before execute code inside curly bracket
//reapeat-while loop execute the code in curly bracket at least once, and check the condition statement for befor further repeat

//6
let isRaining = true

if isRaining {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

//7
let jobLevel = 5

switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job.")
}


//Function
//1
func greet(person: String) -> String {
    "Hello, " + person
}

//2
func multiply(_ a: Int, _ b: Int = 10){
    print(a * b)
}

//3
//when you write code inside the function scope, you use parameter name to represent the input arguments
//when you call a function, you use argument label to clearify what variables use for in that specific function

//4
//String
//Double

