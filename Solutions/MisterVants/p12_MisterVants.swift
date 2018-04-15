import NinetyNineSwiftProblems

extension List {
    //P12 (**) Decode a run-length encoded linked list.
    public func decode() -> List<String> {
        var iterator = self as List?
        var resultHead : List<String>!
        var resultTail : List<String>!
        while let value = iterator?.value as? (Int,String) {
            for _ in 0..<value.0 {
                let node = List<String>(value.1)
                resultHead == nil ? (resultHead = node) : (resultTail.nextItem = node)
                resultTail = node
            }
            iterator = iterator?.nextItem
        }
        return resultHead
    }
}
