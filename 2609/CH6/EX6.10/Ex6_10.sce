//Ex 6.10
clc;
clear;
close;
format('v',6);
f0=1;///kHz
Vsat=14;//V
disp("Various design parameters are :-");
C1=0.05;//micro F//Chosen for the design
disp(C1,"Capacitance(micro F)");
Rf=1/(2*f0*10^3*C1*10^-6)/1000;//kohm
disp(Rf,"Resistance Rf(kohm)");
//R2=0.86*R1 and Rf=R1||R2
R2byR1=0.86;//from R2=0.86*R1 
R2=Rf*(1+R2byR1);//kohm
R1=R2/R2byR1;//kohm
disp(R1,"Resistance R1(kohm)");
disp("Use R1=22 kohm for the design.");
disp(R2,"Resistance R2(kohm)");
