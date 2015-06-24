clc
clear

D1=0.3;
D2=0.2;
C=3;

L1=[(22/7)*(1/2)*(D1+D2)]+[((D1+D2)^2)/(4*C)]+(2*C);
L2=[(22/7)*(1/2)*(D1+D2)]+[((D1-D2)^2)/(4*C)]+(2*C);

L=L2-L1;
printf('The belt length is to be reduced by %2.4f mm',(0-L)*1000);
printf('\n');
