//Ex 3.14
clc;clear;close;
format('v',6);
fN=50;//Hz
C=0.5;//micro F(have to choose C, 0.01<C<1)
R=1/(2*%pi*fN*C*10^-6)/1000;//kohm
disp("Design values are :");
disp(C,"Capacitance(micro F)");
disp(R,"Resistance R(kohm)");
