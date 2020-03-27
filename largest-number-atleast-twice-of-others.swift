class Solution {
    func dominantIndex(_ nums: [Int]) -> Int {
        // check if count is greater than 1
        guard nums.count > 1 else { return 0 }

        // sort the array by greater than
        var sortedNums = nums.sorted(by: >)
        
        // check if first element is greater than or equal to 2 * the second integer sortedNums[1]
        if sortedNums[0] >= 2 * sortedNums[1] {
            // return the index of the largest number which is sortedNums[0]
            return nums.index(of: sortedNums[0])!
        } else {
            // if our condition does not meet, return negative 1
            return -1
        }
    }
}
