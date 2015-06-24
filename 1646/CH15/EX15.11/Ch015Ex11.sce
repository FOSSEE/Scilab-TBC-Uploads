// Scilab code Ex15.11 : Pg:774(2008)
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

function binp = bin_division(op1, op2)
    binp = decimal_binary(binary_decimal(op1)/binary_decimal(op2));   
endfunction

dividend = 11001 ;    // Initialize the first binary multiplicand
divisor = 101;    // Initialize the second binary multiplicand
product = bin_division(dividend, divisor);

printf("%5d divided by %3d gives %3d", dividend, divisor, product);

// Result
// 11001 divided by 101 gives 101 
