// Scilab code Ex8.1 : Pg:327(2008)
clc;clear;
function [dec]= binary_decimal(n) // Function to convert binary to decimal
    dec = 0;
    i = 0;
    while (n <> 0)
      rem = n-fix(n./10).*10; 
      n = int(n/10);
      dec = dec + rem*2.^i;
      i = i + 1;
    end
endfunction   

num = 11001;    // Initialize the binary number
printf("%d in binary = %d in decimal", num, binary_decimal(num)); 

// Result
//  11001 in binary = 25 in decimal
