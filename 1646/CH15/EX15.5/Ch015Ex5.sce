// Scilab code Ex15.5 :Pg:772(2011)
clc;clear;
function hex = binary_hex(n) // Function to convert decimal to hexadecimal
    hex = emptystr();
    while (n <>0)
        rem = n-fix(n./10000).*10000;   // Division Algorithm
        if  rem == 0 then
            hex = hex+'0';
        elseif rem == 1 then    
            hex = hex+'1';
        elseif rem == 10 then    
            hex = hex+'2';
        elseif rem == 11 then    
            hex = hex+'3';
        elseif rem == 100 then    
            hex = hex+'4';
        elseif rem == 101 then    
            hex = hex+'5';
        elseif rem == 110 then    
            hex = hex+'6';    
        elseif rem == 111 then    
            hex = hex+'7';
        elseif rem == 1000 then    
            hex = hex+'8';
        elseif rem == 1001 then    
            hex = hex+'9';
        elseif rem == 1010 then    
            hex=hex+'A';
        elseif rem == 1011 then
            hex=hex+'B';     
        elseif rem == 1100 then
            hex=hex+'C';     
        elseif rem == 1101 then
            hex=hex+'D';     
        elseif rem == 1110 then
            hex=hex+'E';     
        elseif rem == 1111 then
            hex=hex+'F';
        end // If statement ends         
        n = int(n/10000);
    end // While loop ends
    hex = strrev(hex);   // Reverse string
endfunction  

n = [10001100, 1011010111];    // Initialize the binary numbers
printf("\nThe hex equivalent of %d = %s", n(1), binary_hex(n(1))); 
printf("\nThe hex equivalent of %d = %s", n(2), binary_hex(n(2))); 

// Result
// The hex equivalent of 10001100 = 8C
// The hex equivalent of 1011010111 = 2D7 
