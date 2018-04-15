import NinetyNineSwiftProblems

extension List {
    //P14 (*) Duplicate the elements of a linked list.
    public func duplicate() -> List {
        var iterator = self as List?
        var resultHead : List!
        var resultTail : List!
        while let value = iterator?.value {
            for _ in 0...1 {
                let node = List(value)
                resultHead == nil ? (resultHead = node) : (resultTail.nextItem = node)
                resultTail = node
            }
            iterator = iterator?.nextItem
        }
        return resultHead
    }
}
