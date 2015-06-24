//EX13_2 PG-13.3
clc
clear
disp("Representation of the binary number 1101.101 in power of 2")
disp("N=(1*2^3)+(1*2^2)+(0*2^1)+(1*2^0)+(1*2^(-1))+(0*2^(-2))+(1*2^(-3))=13.625")
N=(1*2^3)+(1*2^2)+(0*2^1)+(1*2^0)+(1*2^(-1))+(0*2^(-2))+(1*2^(-3))
printf("\n The decimal equivalent of binary no 1101.101 is: %.3f",N)
