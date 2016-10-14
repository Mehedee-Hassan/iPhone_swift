//: Playground - noun: a place where people can play

import UIKit



var age : Int = 30

var testint : Int = 10


func claculateArea (length : inout Int ,width: Int) -> Int{

    length = 20;
    
    let area = length * width
    
    return area
}


var length = 10;

claculateArea(length: &length,width: 20);


if "this is" == "this is"{
    print("equal !!")
}



//array

var students = [String]()

students.append("mehedee");
students.append("hassan");

print(students.count)


// loop 


for index in 1...5 {
    print("\(index) times 5 is \(index*5)")
}

var test  = [1,2,3,4,5,6,34,23]



for i in 0..<test.count {
    print(test[i]);
}


for i in test {
    print(i);
}



print(test.count);


//dictionar 


var testDic : [String : String] = ["1" : "tt1", "2":"tt2"]


if testDic.isEmpty {
    print("empty");
}

print(testDic["1"]);

for (key ,val) in testDic{
    print ("key = \(key)");
    
}




// -----------

var abilities : [String : Array<String>] = ["1" : ["1.1"]]


//class
class Car{
    var model : String?
}

var testCar : Car?

//if let v = testCar{
//    if let m = v.model{
//        print(m);
//    }
//}

testCar = Car();
testCar?.model = "Bronco";


if let v = testCar ,let m = v.model{
    print(m)
}



// ============ 


class Animal {
    
    var legs:Int?;
    var voice : String?;
    
    init(){
        
    }
    
    init(legs:Int ,voice :String) {
        self.legs = legs;
        self.voice = voice;
    }
    
    func getLegs() -> Int{
        return 0;
    }
    func getVoice () -> String{
        return "";
    }
    
}


class Cat : Animal {
    
    override init(legs: Int ,voice : String) {
        super.init(legs: legs,voice: voice);
    }
    
    override init() {
        super.init();
        self.legs = 4;
        self.voice = "mew";
    }
    
    override func getLegs() -> Int {
        return self.legs!;
    }
    
    
    override func getVoice() -> String {
        return self.voice!;
    }
    
    
}



























