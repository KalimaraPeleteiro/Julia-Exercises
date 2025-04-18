function GeneratePrimeNumbers(limit)
    primes = []

    for number in 1:limit
        prime = true
        
        for sequence_number in 1:number
            if (sequence_number != 1) && (sequence_number != number)
                if (number % sequence_number == 0)
                    prime = false
                    break
                end
            end
        end

        if (prime == true)
            push!(primes, number)
        end
    end

    println("Lista de Números Primos até $limit:")

    for prime in primes
        print("$prime ")
    end
    
    println("")
end


GeneratePrimeNumbers(1000)