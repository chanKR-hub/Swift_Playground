struct Document_Struct {
    var title : String
    var contents : String 
}

var document_one = Document_Struct(title: "문서1", contents: "이것은 구조체1 입니다.") 

// Document_Struct 이란 구조체를 정의한 후에, document_one 이라는 인스턴스를 선언했습니다.
// + Swift에서는 일반적으로 객체라는 말 대신, 인스턴스(instance)라는 용어를 사용합니다.

// 그 다음, document_two라는 변수에 document_one을 그대로 넣어보겠습니다.

var document_two = document_one

//이제 document_one의 title과   document_two의 title을 출력해보겠습니다.
//print("document_one의 제목 : \(document_one.title)") 
//print("document_two의 제목 : \(document_two.title)")

document_two.title = "문서2"
document_two.contents = "이것은 구조체2 입니다."

//print("document_two의 제목 : \(document_two.title)")
//print("document_two의 내용: \(document_two.contents)")

class Document_Class {
    var title : String
    var contents : String

    init(title : String, contents : String){ 
        self.title = title
        self.contents = contents
    }
}

var person_one = Document_Class(title : "문서1", contents : "이 문서는 사람 1이 작성하고 있던 문서입니다.")

var person_two = person_one

print("person_one의 내용 : \(person_one.contents)") 
print("person_two의 내용 : \(person_two.contents)")

person_two.contents = "이 문서는 사람 2가 작성하고 있던 문서입니다."

print("person_one의 내용 : \(person_one.contents)") 
print("person_two의 내용 : \(person_two.contents)")
