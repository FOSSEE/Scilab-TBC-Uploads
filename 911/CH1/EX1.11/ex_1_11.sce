//example 1.11//
clc
//clears the screen//
clear
//clears all existing variables//
a=-142;
//given number//
b=a*-1;
c=dec2bin(b);
//converting it to binary number//
c1=10001110;
d=c1/(10000000);
m=(d-1)*(10^23);
//mantissa//
e=dec2bin(7,8)
//exponent//
f=bin2dec('01111111')
g=7+f;
be=dec2bin(g)
//biased exponent//
be2=10000110
be1=be2*(10^23);
s=1*(10^31);
n=s+be1+m;
//result//
disp('Thus -142 = ')
disp(n);