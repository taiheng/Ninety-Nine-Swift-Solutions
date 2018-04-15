import NinetyNineSwiftProblems

extension List {
    //P15 (**) Duplicate the elements of a linked list a given number of times.
    public func duplicate(times: Int) -> List {
        var iterator = self as List?
        var resultHead : List!
        var resultTail : List!
        while let value = iterator?.value {
            for _ in 0..<times {
                let node = List(value)
                resultHead == nil ? (resultHead = node) : (resultTail.nextItem = node)
                resultTail = node
            }
            iterator = iterator?.nextItem
        }
        return resultHead
    }
}
