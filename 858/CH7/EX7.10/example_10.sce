clc
clear 
printf("example 7.10 page number 316\n\n")

//to find the % transformation
moles_A = 3;
moles_B = 5;
K = 1;

function[f] = F(x)
    f = 15-8*x;
endfunction

//initial guess
x = 10;
y = fsolve(x,F);
printf("amount of A transformed = %f percent",y*(100/3))

