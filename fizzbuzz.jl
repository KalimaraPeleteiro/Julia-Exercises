function FizzBuzz(n)
    for number in 1:n 
        println("\nNúmero $number")
        if (number % 3 == 0) && (number % 5 == 0)
            println("FizzBuzz")
        elseif (number % 3 == 0)
            println("Fizz")
        elseif (number % 5 == 0)
            println("Buzz")
        end
    end
end

FizzBuzz(100)