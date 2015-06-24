// Scilab code Ex8.2 : Pg:328(2008)
clc;clear;
function [dec]= binfrac_decifrac(n) // Function to convert binary fraction to decimal fraction
    dec = 0;
    i = -1;
    while (i >= -3)
      n = n*10;
      rem = round(n);      
      n = n-rem;
      dec = dec + rem*2.^i;
      i = i - 1;
    end
endfunction   

n = 0.101;    // Initialize the binary number
printf("Binary fraction %5.3f = Decimal frac = %5.3f", n, binfrac_decifrac(n)); 

// Result
//  Binary fraction 0.101 = Decimal frac = 0.625 
