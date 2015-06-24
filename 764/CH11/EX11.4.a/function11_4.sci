
//Declare tchar function for torque characteristic computation
//x = d/D
function [T] = tchar(x)
    T = x * (1 - (x^2))
endfunction
