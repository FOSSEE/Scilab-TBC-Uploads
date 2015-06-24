// Scilab code Ex15.8 : Pg:773(2011)
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

bin1 = 1011.11;    // Initialize the first binary binber
bin2 = 1011.01;    // Initialize the second binary binber
bin1_int = int(bin1);     // Extract the integral part for first
bin1_frac = bin1-bin1_int;   // Extract the fractional part for second
bin2_int = int(bin2);     // Extract the integral part for first
bin2_frac = bin2-bin2_int;   // Extract the fractional part for second
dec1 = binary_decimal(bin1_int)+binfrac_decifrac(bin1_frac);
dec2 = binary_decimal(bin2_int)+binfrac_decifrac(bin2_frac);
dec = dec1+dec2;
dec_int = int(dec);
dec_frac = dec-dec_int;
printf("%7.2f + %7.2f = %8.2f", bin1, bin2, decimal_binary(dec_int)+decifrac_binfrac(dec_frac)); 

// Result
// 1011.11 + 1011.01 = 10111.00
