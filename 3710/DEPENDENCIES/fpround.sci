// Function to round a floating point number x to n decimal places
function [f]= fpround(x,n)
f=round(x*10^n)/10^n;
endfunction
