//Example 1.18: add 7 to -5
clc//clears the console
clear //clears all existing variables
x=bitcmp(5,4) //finds complement of 5
y=1;
u=x+y //1 is added to the complement
v=7;
w=u+v
a=dec2bin(w) //binary conversion of the decimal number
disp(' binary form of the number obtained by adding 7 to -5 ')
disp(a) //result is displayed
disp(' the msb is discarded,so four bit representation in binary form =') 
a=dec2bin(w-(2^4),4)
disp(a) //final result is displayed.
