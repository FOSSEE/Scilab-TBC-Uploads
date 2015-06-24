// Scilab code Ex15.4 : Pg:772(2011)
clc;clear;
function octal = decimal_octal(n)  // Function to convert decimal to octal
    i=1; octal = 0;
    while (n<>0)
        rem = n-fix(n./8).*8; 
        octal = octal + rem*i;
        n = int(n/8);
        i = i*10;
    end
endfunction   

n = 278;    // Initialize the octal number
printf("The octal equivalent of %d = %d", n, decimal_octal(n)); 

// Result
// The octal equivalent of 278 = 426
