//9.10
clc;
c=24;
xc= bitcmp (c ,8);
A=xc+1;
B=16;
Ans=A+B;
a=dec2bin(Ans)
disp(a)
disp('Since the MSB is 1 so the number is negative and equal to -8')

Ans=A-B;
a=dec2bin(Ans)
disp(a)
disp('Since the MSB is 1 so the number is negative and equal to -40')