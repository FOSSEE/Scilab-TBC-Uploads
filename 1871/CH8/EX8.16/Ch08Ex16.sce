// Scilab code Ex8.16 : Pg:337(2008)
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

function binp = bin_product(op1, op2)
    binp = decimal_binary(binary_decimal(op1)*binary_decimal(op2));   
endfunction

mul1 = 1111 ;    // Initialize the first binary multiplicand
mul2 = 0111;    // Initialize the second binary multiplicand
product = bin_product(mul1, mul2);

printf("%4d X 0%3d = %7d", mul1, mul2, product);

// Result
//   1111 X 0111 = 1101001 
