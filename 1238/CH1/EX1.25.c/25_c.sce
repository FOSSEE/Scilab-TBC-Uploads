//decimal to BCD conversion//
//example 25.c//
clc
//clears the command window//
clear
//clears//
a=63547;//input in decimal//
for i=1:5
    x(i)=modulo(a,10)
    a=a/10
    a=floor(a)
end
x=strcat(dec2bin(x(5),4)+dec2bin(x(4),4)+dec2bin(x(3),4)+dec2bin(x(2),4)+dec2bin(x(1),4))    
disp('required BCD code is displayed')
disp(x)
