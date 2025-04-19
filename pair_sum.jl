function PairSum(numbers)
    response = 0

    for number in numbers
        if number < 0
            continue
        elseif number % 2 == 0
            response += number
        end
    end

    println("A soma dos números pares na lista $numbers é $response.")
end

PairSum([1, 2, 3, 4, 5, 6, 7, 8])
PairSum([12, 13, 71, 43, 56])
PairSum([1000, 999, 998, 997])
PairSum([7651, 4443, 321, 33])
PairSum([-1, 2, 3, 4, -6])