class Data{
    var value : Int = 100{
        willSet(newValue){
            print("\n[원래 value] : \(value) \n[변경된 후 vlaue] : \(newValue) \n")
        }
        didSet{
            print("\n[원래 value 값에서 얼마나 달라졌을까?] : \(value - oldValue) \n")
        }
    }
}

var data = Data()
data.value = 10