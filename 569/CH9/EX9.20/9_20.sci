// calculate error
clc;
d=1;
At=(%pi*d^2)*10^-6/4;
V=100*10^-6;
h=30*10^-3;
P1=(At*h^2)/V;
P2=(At*h^2)/(V-At*h);
e=P2-P1;
disp(e,'error=' )
