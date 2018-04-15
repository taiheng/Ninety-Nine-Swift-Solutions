import NinetyNineSwiftProblems

extension List {
    //P03 (*) Find the Kth element of a linked list
    public subscript(index: Int) -> T? {
        return index == 0 ? value : nextItem?[index-1]
    }
}
