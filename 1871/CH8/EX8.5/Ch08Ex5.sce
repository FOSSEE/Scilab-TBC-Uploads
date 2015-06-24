// Scilab code Ex8.5 : Pg:332(2008)
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

num1 = 110011;    // Initialize the first binary number
num2 = 101101;    // Initialize the second binary number

printf("%6d + %6d = %7d", num1, num2, decimal_binary(binary_decimal(num1)+binary_decimal(num2))); 

// Result
// 110011 + 101101 = 1100000 
