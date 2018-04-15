import NinetyNineSwiftProblems

extension List {
    //P01 (*) Find the last element of a linked list.
    public var last: T {
        return nextItem?.last ?? value
    }
}
