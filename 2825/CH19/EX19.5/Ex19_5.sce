//Ex19_5 Pg-958 
clc

//Integer part
bin='10101'; //binary input
dec_I=bin2dec(bin) //decimal output

//Decimal part
a=1
b=0
c=1
dec_D=a*2^(-1)+b*2^(-2)+c*2^(-3)
dec=dec_I+dec_D //decimal output
disp("The decimal equivqlent of 10101.101 is")
disp(dec)
