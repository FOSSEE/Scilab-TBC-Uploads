clc;
a=1;
c={6.31-2-(2*1.95)}/2
d=0.03+(0.79*30)
tds=a+c+d;

C=a/tds*100
O=c/tds*100
N=d/tds*100

disp(N,O,C,"analysis by volume is:");
