class Solution {
    func pivotIndex(_ nums: [Int]) -> Int {
     
        var startIndex = 0
        var sum = nums.reduce(0, +)

        for (index, value) in nums.enumerated() {
            if startIndex == (sum - startIndex - value) {
                return index
            } else {
                startIndex = startIndex + value
            }
        }
        return -1
    }
}
