// Collector types

// 2.Set
// 오늘은 ios 16버전과 ios 17버전에서 업데이트 된 기능들을 집합으로 표현해보고자 합니다. 또한 이 두 집합의 연산을 통하여 새로운 버전을 만드는 예제를 진행해보겠습니다.

// 2-1. 빈 Set 생성

var someSet = Set<Int>() // or var someSet : Set<String> = [] , 이처럼 후자처럼 []을 이용한 선언(생성)이 던 편해보이지만, 공식문서에서는 전자처럼 ()를 이용한 선언만 언급함.
someSet.insert(5) // 기본적인 원소 추가
someSet.insert(6)
someSet.insert(7)
someSet.insert(8)
someSet.insert(9)
someSet = []      // 빈 배열로 초기화



//서브 스크립트를 통한 생성
var ios_sixteen : Set<String> = ["개인정보 보호",                 //ios 16에서 업데이트 된 기능들.
                                 "잠금화면 꾸미기",
                                 "집중모드",
                                 "메시지",
                                 "Mail",
                                 "라이브텍스트"]

var ios_seventeen : Set<String> = ["개인정보 보호",               //ios 17에서 업데이트 된 기능들.
                                   "스탠바이",
                                   "실시간 음성 메시지",
                                   "연락처 포스터",
                                   "일기",
                                   "NameDrop",
                                   "Mail",
                                   "라이브텍스트"]



// 2-2. Set의 원소의 접근 및 생성과 삭제
var ios_test : Set<String> = []                               // 새로운 버전을 만들기 위해서 test 버전을 만듬.

ios_test.insert("문자 메시지")
ios_test.insert("생성형 AI 탑재")

if ios_test.isEmpty{
    print("Please add some features.")
}else{
    print("test version has \(ios_test.count) features.")     // count 프로퍼티 & isEmpty 프로퍼티
}

ios_test.remove("문자 메시지") // 원소를 제거해주는 remove(_:) 메서드


if !ios_test.contains("개인정보 보호"){ // 찾고자 하는 원소가 집합 안에 들어있는지 확인해주는 contain(_:) 메서드
    ios_test.insert("개인정보 보호")
}


// 2-3. Set 반복

for features in ios_test{
    print("\(features) is contained in ios test version")
}

for features in ios_test.sorted(){
    print("\(features) is contained in ios test version")  // 집합 원소 사이에 순서를 부여해주는 sorted()메서드 (필요할 때만 써도 됌 필수 아님)
}


// 2.4 Set 연산

// 합집합, 차집합, 교집합, 드모르간의 법칙(symmetricDifference)??
var commonThing = ios_sixteen.intersection(ios_seventeen)  // ios 16과 ios 17 사이의 공통된 업데이트
// ["라이브텍스트", "Mail", "개인정보 보호"]

var new_version = ios_seventeen.union(ios_test) // ios 17에 test 버젼의 기능을 더한(합집합) 새로운 버전
// ["생성형 AI 탑재", "실시간 음성 메시지", "개인정보 보호", "연락처 포스터", "일기", "Mail", "라이브텍스트", "스탠바이", "NameDrop"]


var only_seventeen = ios_seventeen.subtracting(ios_sixteen) // ios 17 버전에서 ios 16의 원소들을 뺀(차집합) 집합.
// ["실시간 음성 메시지", "연락처 포스터", "NameDrop", "스탠바이", "일기"]

var some_featerues = ios_sixteen.symmetricDifference(ios_seventeen)
// ["메시지", "집중모드", "실시간 음성 메시지", "스탠바이", "연락처 포스터", "NameDrop", "잠금화면 꾸미기", "일기"]



// 집합의 포함관계 - 초집합(SuperSet), 부분집합(SubSet), 서로소(disjoint)

new_version.isSuperset(of: ios_seventeen)  // 초집합 (인지 확인하는 메서드) - true

ios_seventeen.isSubset(of: new_version) // 부분집합(인지 확인하는 메서드) - true

ios_test.isDisjoint(with: ios_sixteen) // 서로소(인지 확인하는 메서드) - false










