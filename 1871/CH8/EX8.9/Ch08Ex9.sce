// Scilab code Ex8.9 : Pg:334(2008)
clc;clear;
function [bini]= decimal_binary(ni) // Function to convert decimal to binary
    bini = 0;
    i = 1;
    while (ni <> 0)
      rem = ni-fix(ni./2).*2; 
      ni = int(ni/2);
      bini = bini + rem*i;
      i = i * 10;
    end
endfunction   

function [deci]= binary_decimal(ni) // Function to convert binary to decimal
    deci = 0;
    i = 0;
    while (ni <> 0)
      rem = ni-fix(ni./10).*10; 
      ni = int(ni/10);
      deci = deci + rem*2.^i;
      i = i + 1;
    end
endfunction   

sub = 10110;    // Initialize the first binary number
men = 01011;    // Initialize the second binary number

printf("%5d - 0%4d = 0%4d", sub, men, decimal_binary(binary_decimal(sub)-binary_decimal(men))); 

// Result
// 10110 - 01011 = 01011 
