function DigitSum(number::Int)
    response = 0
    string_number = string(number)

    for n in string_number
        response += parse(Int, n)
    end

    println(response)
end

DigitSum(123)

DigitSum(2809830)

DigitSum(12398012)

DigitSum(123000000)