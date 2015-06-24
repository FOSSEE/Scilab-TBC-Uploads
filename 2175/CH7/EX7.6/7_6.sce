clc;
a=0.8/12;
b=0.12/2;
x=a+b/2;

s_AF=32*x/0.233;
disp(s_AF,"stoichiometric A/F ratio is:");

Twp=a+b+3.76*x;
C=a/Twp*100;
H=b/Twp*100;
N=.365/Twp*100;

disp(N,H,C,"wet analysis of C,H, and N respectively is:")
