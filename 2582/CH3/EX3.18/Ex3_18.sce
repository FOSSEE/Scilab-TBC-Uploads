//Ex 3.18
clc;clear;close;
format('v',5);
f=2*1000;//Hz
R=10;//kohm(Assumed)(R1=R2=R)
C=1/(2*%pi*R*1000*f);//F
disp("Value of resistance R1=R2 can be choosen as 10 kohm")
disp(C*10^9,"Cpacitance(nF)");
disp("Value of resistance R4 can be choosen as 10 kohm & R3=2*R4=20 kohm for Beta to be 1/3");
