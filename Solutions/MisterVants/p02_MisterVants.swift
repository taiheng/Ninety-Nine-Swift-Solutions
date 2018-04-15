import NinetyNineSwiftProblems

extension List {
    //P02 (*) Find the last but one element of a linked list.
    public var penultimate: T? {
        guard let next = nextItem else { return nil }
        return next.penultimate ?? value
    }
}
