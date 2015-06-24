//Ex 3.5
clc;clear;close;
format('v',5);
fo=2;//kHz
Ap=10;//Band pass gain
C=0.1;//micro F(have to choose C, 0.01<C<1)
R2=1/(2*%pi*fo*10^3*C*10^-6);//ohm
R1=R2/Ap;//ohm
disp("Design values are :");
disp(C,"Capacitance(micro F)");
disp(R1,"Resistance R1(ohm)");
disp(R2/1000,"Resistance R2(kohm)");
//Answer in the book is wrong.
