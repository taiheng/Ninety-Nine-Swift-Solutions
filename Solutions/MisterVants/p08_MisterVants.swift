import NinetyNineSwiftProblems

extension List where T: Equatable {
    //P08 (**) Eliminate consecutive duplicates of linked list elements.
    public func compress() -> List {
        let first = List(self.value)
        var last = first
        var iterator = self
        while let next = iterator.nextItem {
            if next.value != last.value {
                let newNode = List(next.value)
                last.nextItem = newNode
                last = newNode
            }
            iterator = next
        }
        return first
    }
}
