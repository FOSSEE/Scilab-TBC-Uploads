//Chapter 23, Example 23.23
clc
//Initialisation
x=[9 4 5 0]               //decimal number to be convert


//Calculation
//using for loop for converting each decimal to BCD
n=4
m=4
disp("BCD is ")
for i = 1:n
    z=dec2bin(x(i),m)                //decimal to binary conversion
    printf(z)
    printf(" ")                     //display of BCD
end


