// Collector types
//

// 3.Array(배열)

// 3-1. 빈 배열 생성 및 초기화

var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")
// Prints "someInts is of type [Int] with 0 items."


someInts.append(3)
// someInts now contains 1 value of type Int
someInts = []
// someInts is now an empty array, but is still of type [Int]


//기본값 배열 생성 (Creating an Array with a Default Value)
var threeDoubles = Array(repeating: 0.0, count: 3)
// threeDoubles is of type [Double], and equals [0.0, 0.0, 0.0]


//배열 리터럴로 생성 (Creating an Array with an Array Literal)
var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items


// 3-2. 배열 접근과 수정

print("The shopping list contains \(shoppingList.count) items.") // 배열의 크기 -> count 프로퍼티
// Prints "The shopping list contains 2 items."


// 배열이 비었는지 확인하는 isEmpty 프로퍼티
if shoppingList.isEmpty {
    print("The shopping list is empty.")
} else {
    print("The shopping list is not empty.")
}
// Prints "The shopping list is not empty."


// 배열 끝에 데이터 추가
shoppingList.append("Flour")
// shoppingList now contains 3 items, and someone is making pancakes


// 배열 끼리의 연산(추가)
shoppingList += ["Baking Powder"]
// shoppingList now contains 4 items
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
// shoppingList now contains 7 items


// 서브스크립트를 통한 수정
shoppingList[0] = "Six eggs"
// the first item in the list is now equal to "Six eggs" rather than "Eggs"


// 범위를 지정하여 한꺼번에 수정
shoppingList[4...6] = ["Bananas", "Apples"]
// shoppingList now contains 6 items


//특정 인덱스에 원소 삽입
shoppingList.insert("Maple Syrup", at: 0)
// shoppingList now contains 7 items
// "Maple Syrup" is now the first item in the list


//배열의 특정 인덱스의 요소 삭제
let mapleSyrup = shoppingList.remove(at: 0)
// the item that was at index 0 has just been removed
// shoppingList now contains 6 items, and no Maple Syrup
// the mapleSyrup constant is now equal to the removed "Maple Syrup" string.


//마지막 요소 삭제
let apples = shoppingList.removeLast()
// the last item in the array has just been removed
// shoppingList now contains 5 items, and no apples
// the apples constant is now equal to the removed "Apples" string


// 3-3. 배열의 반복


// 그냥 반복
for item in shoppingList {
    print(item)
}
// Six eggs
// Milk
// Flour
// Baking Powder
// Bananas


//enumerated 메서드를 이용한 인덱스와 Item 분리및 반복
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)")
}
// Item 1: Six eggs
// Item 2: Milk
// Item 3: Flour
// Item 4: Baking Powder
// Item 5: Bananas





