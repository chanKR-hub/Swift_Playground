//Collector types

//1. Dictionary

//1-1. 빈 딕셔너리 생성 : 맥북 단축키에 대한 딕셔너리 예제
var commands : [String:String] = ["잘라내기": "command-x",
                                   "복사": "command-c",
                                   "붙여넣기": "command-v",
                                   "되돌리기": "command-z",
                                   "모든항목": "command-a"]

//1-2. 딕셔너리 원소 접근 및 수정


// • 딕셔너리의 길이를 알아낼 수 있는 count 프로퍼티(속성)
print("I Know \(commands.count) commands.")


// • 딕셔너리가 비어있는지를 알려주는 isEmpty 프로퍼티
//commands = [:]
if commands.isEmpty{
    print("Please add some commands.")
}
else{
    print("I Know \(commands.count) commands.")
}


// • 딕셔너리 수정
commands["잘라내기"] = "command-q" // 기본적인 접근 및 수정
//Optional("command-x")를 출력

//서브스크립트를 통한 수정
commands["저장"] = "command-s"
commands["새탭열기"] = "command-t"



// updateValue(_:forKey:) 메서드를 통해 수정
let oldCommand = commands.updateValue("command-x", forKey: "잘라내기")
print("old command is \(oldCommand).")

//updateValue 메서드는 독특하게도 이전에 쓰던 Value값을 반환한다.


// • 딕셔너리 삭제

commands["모든항목"] = nil // nil 을 통한 삭제

let removedValue = commands.removeValue(forKey: "잘라내기") // removeValue(forKey:)를 이용한 삭제
print("\(removedValue) is removed")


// 1-3. 딕셔너리 반복문

// • 딕셔너리 기본 반복
for (command, result) in commands{
    print("\(command) : \(result)")
}

// • 딕셔너리 Key, Value 분리해서 반복
for command in commands.keys{
    print(command)
}

for result in commands.values{
    print(result)
}


// • 딕셔너리와 Array API를 통한 새로운 배열 생성
var command = [String](commands.keys)

var results = [String](commands.values)






