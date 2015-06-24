//Ex19_21 Pg-965
clc

//Integer part
hex='F8E6'; //binary input
dec_I=hex2dec(hex) //decimal output

//Decimal part
a=3 
b=9
dec=dec_I+a*16^(-1)+b*16^(-2) //decimal output 
disp("The decimal equivalent of F8E6.39 is")
printf("\n    %.4f",dec)
