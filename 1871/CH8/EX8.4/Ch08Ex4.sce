// Scilab code Ex8.4 : Pg:330(2008)
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

n = 25.625;    // Initialize the decimal number
n_int = int(n);     // Extract the integral part
n_frac = n-n_int;   // Extract the fractional part
printf("Binary equivalent of %6.3f = %9.3f", n, decimal_binary(n_int)+decifrac_binfrac(n_frac)); 

// Result
// Binary equivalent of 25.625 = 11001.101 
