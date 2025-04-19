function CPFValidator(cpf::String)
    if length(cpf) != 11
        println("O CPF $cpf é inválido. Ele não possui 11 dígitos.")
        return
    end

    digits = unique(cpf)
    if length(digits) == 1
        println("O CPF $cpf é inválido, já que todos os seus dígitos são iguais.")
        return
    end

    only_digits = all(isdigit, cpf)
    if !only_digits
        println("O CPF $cpf é inválido, já que não possui apenas dígitos.")
        return
    end

    firstValidationDigit = FirstDigitValidator(cpf)

    if (parse(Int, cpf[10]) != firstValidationDigit)
        println("O primeiro dígito validador deveria ser $firstValidationDigit. O CPF $cpf é inválido.")
        return
    end


    secondValidationDigit = SecondDigitValidator(cpf)

    if (parse(Int, cpf[11]) != secondValidationDigit)
        println("O segundo dígito validador deveria ser $firstValidationDigit. O CPF $cpf é inválido.")
        return
    end

    println("O CPF $cpf é válido!")
end


function FirstDigitValidator(cpf::String)
    nine_digits = parse.(Int, collect(cpf[1:9]))    # Primeiros nove dígitos do CPF
    weights = collect(10:-1:2)                      # [10, 9, 8, 7, 6, 5, 4, 3, 2]
    
    result = nine_digits .* weights

    sum_value = sum(result)

    remaining = sum_value % 11

    if remaining < 2
        return 0
    else
        return 11 - remaining
    end
end

function SecondDigitValidator(cpf::String)
    ten_digits = parse.(Int, collect(cpf[1:10]))    # Primeiros dez dígitos do CPF
    weights = collect(11:-1:2)                      # [11, 10, 9, 8, 7, 6, 5, 4, 3, 2]
    
    result = ten_digits .* weights

    sum_value = sum(result)

    remaining = sum_value % 11

    if remaining < 2
        return 0
    else
        return 11 - remaining
    end
end

CPFValidator("1909932")
CPFValidator("11111111111")
CPFValidator("111111111SS")
CPFValidator("52998224725")
CPFValidator("12345678909")
CPFValidator("32165498700")
CPFValidator("98765432100")
CPFValidator("11122233344")
CPFValidator("45362758109")
CPFValidator("03288147042")
CPFValidator("39473613252")
CPFValidator("68825499317")
CPFValidator("70815838779")
CPFValidator("22222222222")  
CPFValidator("12345678900")  
CPFValidator("11122233355")  
CPFValidator("00000000000")  
CPFValidator("12312312312")  
CPFValidator("98765432111")
CPFValidator("11122233333")
CPFValidator("99999999999")  
CPFValidator("22233344455")

