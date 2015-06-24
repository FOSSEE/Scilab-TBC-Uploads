// Scilab code Ex15.3 : Pg:772(2011)
clc;clear;
function [dec]= octal_decimal(n) // Function to convert binary to decimal
    dec = 0;
    i = 0;
    while (n <> 0)
      rem = n-fix(n./10).*10; 
      n = int(n/10);
      dec = dec + rem*8.^i;
      i = i + 1;
    end
endfunction   

n = 173;    // Initialize the octal number
printf("Decimal equivalent of %d = %d", n, octal_decimal(n)); 

// Result
// Decimal equivalent of 173 = 123 
