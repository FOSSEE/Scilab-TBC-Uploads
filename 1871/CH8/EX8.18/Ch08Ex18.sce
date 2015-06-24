// Scilab code Ex8.18 : Pg:339(2008)
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

function [binf]= decifrac_binfrac(nf) // Function to convert binary fraction to decimal fraction
    binf = 0; i = 0.1;
    while (nf <> 0)
      nf = nf*2;
      rem = int(nf); 
      nf = nf-rem;
      binf = binf + rem*i;
      i = i/10;
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
int_Q = int(binary_decimal(op1)/binary_decimal(op2));
frac_Q = binary_decimal(op1)/binary_decimal(op2) - int_Q;
    binp = decimal_binary(int_Q)+decifrac_binfrac(frac_Q);   
endfunction

dividend = 11011 ;    // Initialize the first binary multiplicand
divisor = 100;    // Initialize the second binary multiplicand

product = bin_division(dividend, divisor);

printf("%5d divided by %3d gives %6.2f", dividend, divisor, product);

// Result
//  11011 divided by 100 gives 110.11 
