//9.11
clc;
c=60;
xc= bitcmp (c ,8);
A=xc+1;
d=28;
xd= bitcmp (d ,8);
B=xd+1;
Ans=B+A;
a=dec2bin(Ans)
disp(a)
disp('Since the MSB is 1 so the number is negative and equal to -88')
Ans=B-A;
a=dec2bin(Ans,8)
disp(a)
disp('Since the MSB is 0 so the number is positive and equal to +32')