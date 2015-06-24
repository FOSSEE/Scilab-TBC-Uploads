clc
clear
disp("Example 8.25")
printf("\n")
disp("Add the following hexadecimal numbers")
disp("a)ABC & ABCDE b) DEF & 12EF")
//this program add only integer part
a='ABC'
b='ABCDE'
a1=hex2dec(a)
a2=hex2dec(b)
sum1=a1+a2
sumhex=dec2hex(sum1)
printf("%s",sumhex)