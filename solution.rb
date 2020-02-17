nums = [0, 1, 0, 3, 12]
more_nums = [2, 7, 11, 15]

def move_zeroes(nums)
    zeroes = nums.count(0)
    nums.delete(0)
    zeroes.times {nums << 0}
    nums
end

def two_sum(numbers, target)
    h = {}
    i = 0
    while i < numbers.length do
        complement = target - numbers[i]
        if h.key?(complement)
            return [h[complement], i]
        end
        h[numbers[i]] = i
        i += 1
    end
end

# p two_sum(more_nums, 22)