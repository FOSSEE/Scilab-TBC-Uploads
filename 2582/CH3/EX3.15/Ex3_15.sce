//Ex 3.15
clc;clear;close;
format('v',6);
fo=1*1000;//Hz
fo_dash=1.5*1000;//Hz
C=0.01;//micro F(have to choose C, 0.01<C<1)
R=1/(2*%pi*fo*C*10^-6)/1000;//kohm
K=1.2*1000/fo_dash;//scaling factor
Rdash=K*R;///kohm
disp("Design values are :");
disp(C,"Capacitance(micro F)");
disp(R,"Resistance R(kohm)");
disp(Rdash,"Resistance Rdash(kohm)");
