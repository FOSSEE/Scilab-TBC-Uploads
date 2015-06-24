// Scilab code Ex15.1 : Pg:771(2011)
clc;clear;
function [bin]= decimal_binary(n) // Function to convert decimal to binary
    bin = 0;
    i = 1;
    while (n <> 0)
      rem = n-fix(n./2).*2; 
      n = int(n/2);
      bin = bin + rem*i;
      i = i * 10;
    end
endfunction    

n = 25;    // Initialize the decimal number
printf("Binary equivalent of %d = %d", n, decimal_binary(n)); 

// Result
// Binary equivalent of 25 = 11001
