import NinetyNineSwiftProblems

extension List {
    /**
     P12 (**) Decode a run-length encoded linked list.
     http://www.enekoalonso.com/projects/99-swift-problems/#p12
     - returns: A decoded list with elements represented as strings
     - author: Tai Heng (github: taiheng)
     - complexity: O(n^2)
     */
    func decode() -> List<String> {
        guard let encodedList = self as? List<(Int, String)> else { return List<String>("") }
        var newHead: List<String>?
        var newTail: List<String>?
        var iterator: List<(Int, String)>? = encodedList

        while iterator != nil {
            defer { iterator = iterator?.nextItem }

            guard let decompressed = decompress(iterator) else { break }
            
            if newHead == nil {
                newHead = decompressed.head
                newTail = decompressed.tail
            } else {
                newTail?.nextItem = decompressed.head
                newTail = decompressed.tail
            }
        }

        return newHead ?? List<String>("")
    }

    private func decompress(_ node: List<(Int, String)>?) -> (head: List<String>, tail: List<String>)? {
        guard let dataNode = node else { return nil }
        guard dataNode.value.0 > 0 else { return nil }

        let valueToDuplicate = dataNode.value.1
        let head = List<String>(String(describing: valueToDuplicate))
        var tail = head
        for _ in 0..<(dataNode.value.0 - 1) {
            let newNode = List<String>(String(describing: valueToDuplicate))
            tail.nextItem = newNode
            tail = newNode
        }

        return (head, tail)
    }
}
