//Given that
p = 0.90

//Sample Problem 40-8
printf("**Sample Prblem 40-8**\n")
funcprot(0)
function [P] = f(x)
    P = 1 - (%e^(-2*x))*(1 + 2*x + 2*x^2) - p
endfunction
p = fsolve(1, f)
printf("The possible value of radius is %1.2f*a", p)