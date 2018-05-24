import NinetyNineSwiftProblems

extension List {
    //P05 (*) Reverse a linked list.
    // Note: Original list is considered immutable and remains the same after the reverse() call.
    public func reverse() -> List {
        var immutableHead = self
        var current = List(value)
        while immutableHead.nextItem != nil {
            immutableHead = immutableHead.nextItem!
            let newHead = List(immutableHead.value)
            newHead.nextItem = current
            current = newHead
        }
        return current
    }
}
