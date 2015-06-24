//Example No. 3_10
//Floating Point Notation
//Pg No. 52
clear ; close ; clc ;

function [m,e] =float_notation(n)      
m = n ;
for i = 1:16
    if abs(m) >= 1 then
        m = n/10^i
        e = i
    elseif abs(m) < 0.1
        m = n*10^i
        e = -i
    else
        if i == 1 then
            e = 0
        end
        break ;
    end
end
endfunction

[m,e] = float_notation(0.00596)
mprintf('\n 0.00596 is expressed as  %f*10^%i \n',m,e)
[m,e] = float_notation(65.7452)
mprintf('\n 65.7452 is expressed as  %f*10^%i \n',m,e)
[m,e] = float_notation(-486.8)
mprintf('\n -486.8 is expressed as  %f*10^%i \n',m,e)