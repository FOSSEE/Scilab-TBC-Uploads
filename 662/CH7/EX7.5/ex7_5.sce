            //Example 7.5
//factorial calculation

function[prod] = Factorial(n)        //factorial is a reserve word
    prod=1;
    if n >1 then
        for i = 2 :1: n
            prod=prod*i;
        end
    end
    return prod;
endfunction
