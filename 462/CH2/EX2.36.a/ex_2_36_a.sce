//example 2.36(a)//
//subtraction of hexadecimal number//
clc
//clears the screen//
clear
//clears already existing variables//
x=hex2dec('3F')
//hexadecimal to deciimal conversion//
y=hex2dec('5C')
z=x-y
//subtraction//
t=z*-1
t1=dec2hex(t)
//answer in hexadecimal form(modulus)//
t2=bitcmp(t,8)
//complement//
t3=t2+1
//2's complement//
a=dec2bin(t3)
//answer in 2's complement form
disp('result of subtraction in 2''s compliment form is:')
disp(a)