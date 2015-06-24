//example 2.27 (b)//
clc
//clears the screen//
clear
//clears already existing variables//
x=oct2dec('26')
//octal to decimal conversion//
y=oct2dec('75')
z=x-y
//subtraction//
t=z*(-1)
t1=bitcmp(t,8)
//1's complement//
t2=t1+1
//2's compliment//
a=dec2bin(t2)
//decimal to binary conversion//
disp('answer in 2''s compliment form:')
disp(a)
//answer in 2's complement form//