import NinetyNineSwiftProblems

extension List where T: Equatable {
    /**
     P11 (*) Modified run-length encoding.
     http://www.enekoalonso.com/projects/99-swift-problems/#p11
     - discussion: Compresses a single dimension list into a list of tuples indicating the frequency of consecutive elements. Single elements are copied as is instead of as a tuple.
     - returns: A run length encoded list
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    func encodeModified() -> List<Any> {
        let encoded = encode()
        var iterator: List<(Int, T)>? = encoded.nextItem
        let newHead: List<Any> = createEncodeModifiedNode(from: encoded)
        var newTail: List<Any> = newHead

        while iterator != nil {
            defer { iterator = iterator?.nextItem }

            guard let current = iterator else { continue }
            let newNode = createEncodeModifiedNode(from: current)
            newTail.nextItem = newNode
            newTail = newNode
        }

        return newHead
    }

    private func createEncodeModifiedNode(from node: List<(Int, T)>) -> List<Any> {
        let newNode: List<Any>
        if node.value.0 == 1 {
            newNode = List<Any>(node.value.1)
        } else {
            newNode = List<Any>(node.value)
        }

        return newNode
    }
}
