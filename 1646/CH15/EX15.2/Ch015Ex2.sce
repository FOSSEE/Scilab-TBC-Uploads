// Scilab code Ex15.2 : Pg:771(2011)
clc;clear;
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

function [decf]= binfrac_decifrac(nf) // Function to convert binary fraction to decimal fraction
    decf = 0;
    i = -1;
    while (i >= -3)
      nf = nf*10;
      rem = round(nf);    
      nf = nf-rem;
      decf = decf + rem*2.^i;
      i = i - 1;
    end
endfunction   

n = 101.101;    // Initialize the binary number
n_int = int(n);     // Extract the integral part
n_frac = n-n_int;   // Extract the fractional part
printf("Decimal equivalent of %7.3f = %5.3f", n, binary_decimal(n_int)+binfrac_decifrac(n_frac)); 

// Result
// Decimal equivalent of 101.101 = 5.625 
