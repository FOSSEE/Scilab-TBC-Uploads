//Example 3_10 page no:129
clc
V1=10;
G1=1/2;
V2=20;
G2=1/5;
V0=((V1*G1)+(V2*G2))/(G1+G2)
R0=1/(G1+G2)
I=V0/(3+R0)
disp(I,"the current is (in ampere)")
