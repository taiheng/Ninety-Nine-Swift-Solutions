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
        let compacted = pack()
        var iterator: List<List<T>>? = compacted
        var encodedHead: List<Any> = List<(Int, T)>((compacted.value.length, compacted.value.value))
        var encodedTail: List<Any> = encodedHead
        
        while iterator != nil {
            defer { iterator = iterator?.nextItem }
            
            guard let currentNode = iterator else { break }
            let newNode = List<(Int, T)>((currentNode.value.length, currentNode.value.value))
            encodedTail.nextItem = newNode
            encodedTail = newNode
        }
        
        return encodedHead
    }
}
