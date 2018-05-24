import NinetyNineSwiftProblems

extension List {
    //P07 (**) Flatten a nested linked list structure.
    // Note: Original list is considered immutable and remains the same after the reverse() call.
    public func flatten() -> List {
        var head = List(self.value)
        var tail = head
        var iterator = self
        if let list = head.value as? List {
            head = list.flatten()
            tail = head.lastNode
        }
        while let next = iterator.nextItem {
            if let listValue = next.value as? List {
                tail.nextItem = listValue.flatten()
                tail = tail.lastNode
            } else {
                let node = List(next.value)
                tail.nextItem = node
                tail = tail.nextItem!
            }
            iterator = next
        }
        return head
    }
    
    private var lastNode: List {
        return nextItem?.lastNode ?? self
    }
}
