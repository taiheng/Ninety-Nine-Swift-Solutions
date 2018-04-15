import NinetyNineSwiftProblems

extension List {
    //P04 (*) Find the number of elements of a linked list.
    public var length: Int {
        return 1 + (nextItem?.length ?? 0)
    }
}
