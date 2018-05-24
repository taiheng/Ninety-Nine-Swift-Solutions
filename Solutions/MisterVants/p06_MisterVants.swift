import NinetyNineSwiftProblems

extension List where T:Equatable {
    //P06 (*) Find out whether a linked list is a palindrome.
    public func isPalindrome() -> Bool {
        var original = self
        var reversed = self.reverse()
        guard original.value == reversed.value else { return false }
        while let nextOriginal = original.nextItem, let nextReversed = reversed.nextItem {
            original = nextOriginal
            reversed = nextReversed
            guard original.value == reversed.value else { return false }
        }
        return true
    }
}
