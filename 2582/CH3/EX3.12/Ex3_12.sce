//Ex 3.12
clc;clear;close;
format('v',6);
fo=1.2*1000;//Hz
Q=4;//Quality factor
Ap=10;//band pass gain
C=0.05;//micro F(have to choose C, 0.01<C<1)
R2=2*Q/(2*%pi*fo*C*10^-6)/1000;//kohm
R1=R2/2/Ap;//kohm
R3=R1/(4*%pi^2*R1*1000*R2*1000*(C*10^-6)^2*fo^2-1);//kohm
disp("Design values are :");
disp(C,"Capacitance(micro F)");
disp(R1,"Resistance R1(kohm)");
disp(R2,"Resistance R2(kohm)");
disp(R3*1000,"Resistance R3(ohm)");
//Answer in the book is wrong for R3 & value of C is 0.05 instead of 0.5.
