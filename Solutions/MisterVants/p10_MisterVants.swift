import NinetyNineSwiftProblems

extension List where T: Equatable {
    //P10 (*) Run-length encoding of a linked list.
    public func encode() -> List<(Int, T)> {
        var iterator = Optional.some(pack())
        var resultHead : List<(Int,T)>!
        var resultTail : List<(Int,T)>!
        while let current = iterator {
            let node = List<(Int,T)>((current.value.length,current.value.value))
            resultHead == nil ? (resultHead = node) : (resultTail.nextItem = node)
            resultTail = node
            iterator = iterator?.nextItem
        }
        return resultHead
    }
}

