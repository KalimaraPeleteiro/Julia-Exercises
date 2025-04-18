function FrequencyCounter(word)
    response = Dict()
    for char in word
        if haskey(response, char)
            response[char] += 1
        else
            response[char] = 1
        end
    end

    println("""\nContador de Frequência para a palavra: "$word"!""")
    for (key, value) in pairs(response)
        println("$key -> $value")
    end
    println("")
end


FrequencyCounter("Eu sou uma pessoa muito sagaz.")