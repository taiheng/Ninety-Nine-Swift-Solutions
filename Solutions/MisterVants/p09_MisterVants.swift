import NinetyNineSwiftProblems

// prolly can be optimized
extension List where T: Equatable {
    public func pack() -> List<List<T>> {
        
        var iterator = self as List?
        var packHead : List!
        var packTail : List!
        var result : List<List>!
        var resultTail : List<List<T>>!
        
        while let value = iterator?.value {
            var node = List(value)
            if value != packTail?.value {
                packHead = node
                packTail = packHead
                if result == nil {
                    result = List<List<T>>(packHead)
                    resultTail = result
                } else {
                    resultTail.nextItem = List<List<T>>(packHead)
                    resultTail = resultTail.nextItem!
                }
            } else {
                packTail.nextItem = node
                packTail = node
            }
            iterator = iterator?.nextItem
        }
        return result
    }
}
