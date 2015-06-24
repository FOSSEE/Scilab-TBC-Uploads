// Scilab code Ex8.19 : Pg:346(2008)
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

function octal = decimal_octal(n)  // Function to convert decimal to octal
    i=1; octal = 0;
    while (n<>0)
        rem = n-fix(n./8).*8; 
        octal = octal + rem*i;
        n = int(n/8);
        i = i*10;
    end
endfunction

function hex = decimal_hex(n) // Function to convert decimal to hexadecimal
    hex = emptystr();
    while (n <>0)
        rem = n-fix(n./16).*16; 
        if rem == 10 then 
            hex(i)=hex+'A';
        elseif rem == 11 then
            hex=hex+'B';     
        elseif rem == 12 then
            hex=hex+'C';     
        elseif rem == 13 then
            hex=hex+'D';     
        elseif rem == 14 then
            hex=hex+'E';     
        elseif rem == 15 then
            hex=hex+'F';     
        else 
            hex=hex+string(rem);
        end
        n = int(n/16);
    end
    hex = strrev(hex);   // Reverse string
endfunction

n = [32, 256, 51];     // Initialize a vector to the given decimals
printf("\n__________________________________________________");
printf("\nDecimal      Binary        Octal       Hexadecimal ");
printf("\n__________________________________________________");
for i = 1:1:3
printf("\n%d       %10d      %5d          %4s", n(i), decimal_binary(n(i)), decimal_octal(n(i)), decimal_hex(n(i)));
end
printf("\n__________________________________________________");

// Result
// __________________________________________________
// Decimal      Binary        Octal       Hexadecimal 
// __________________________________________________
// 32           100000         40            20
// 256        100000000        400           100
// 51           110011         63            33
// __________________________________________________ 
