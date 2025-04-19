struct RunLengthChar
    char::Char
    length::Integer
end

function CompressString(s::String)
    RLCList = RunLengthChar[]
    
    i = 1
    while i < lastindex(s)
        char = s[i]
        char_count = 1

        while (i + char_count <= lastindex(s)) && (s[i + char_count] == char)
            char_count +=1
        end

        push!(RLCList, RunLengthChar(char, char_count))
        i += char_count
    end

    response = ""
    for rlc in RLCList
        response *= string(rlc.char, rlc.length)
    end

    println("""Comprimindo a string "$s", ela se torna "$response".""")
    return response
end


function DecompressString(s::String)
    response = ""

    i = 1
    while i < lastindex(s)
        char = s[i]
        count = parse(Int, s[i+1])

        for _ in 1:count
            response *= string(s[i])
        end
        i += 2
    end

    println("""Descomprimindo a string "$s", ela se torna "$response".""")
end


CompressString("aaabb")
CompressString("aaabbaaaa")
CompressString("aabddccccaaa")
CompressString("eeebdccca")
CompressString("bbddcaa")

DecompressString("b2d2c1a2")
DecompressString("e4f5g6")
DecompressString("a2b3e4r4")