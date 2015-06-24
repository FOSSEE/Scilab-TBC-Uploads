//Example 2.10
//inverse Z transform of 1/(1-a*z^-1)
clear;clc;
xdel(winsid());

// a=1
function y=f(z);
    y=z/(z-1) //upon simplification of the given equation 
endfunction
intc(1+%i,2-%i,f)
