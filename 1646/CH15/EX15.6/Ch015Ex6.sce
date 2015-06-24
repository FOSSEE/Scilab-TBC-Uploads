// Scilab code Ex15.6 : Pg:772(2011)
clc;clear;
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

n = 72905;    // Initialize the binary numbers
printf("\nThe hex equivalent of %d = %s", n, decimal_hex(n)); 


// Result
// The hex equivalent of 72905 = 11CC9 
