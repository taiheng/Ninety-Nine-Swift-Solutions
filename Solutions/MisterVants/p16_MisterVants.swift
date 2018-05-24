import NinetyNineSwiftProblems

extension List {
    //P16 (**) Drop every Nth element from a linked list.
    public func drop(every: Int) -> List? {
        var head: List?
        var tail: List?
        var iterator = self as List?
        var count = 0
        while let value = iterator?.value {
            count += 1
            if count < every {
                let node = List(value)
                head == nil ? (head = node) : (tail?.nextItem = node)
                tail = node
            } else {
                count = 0
            }
            iterator = iterator?.nextItem
        }
        return head
    }
}
