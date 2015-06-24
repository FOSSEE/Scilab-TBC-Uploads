//Ex 5.16
clc;
clear;
close;
format('v',4);
//From the given equationVout=-integrate('5*Vx+2*Vy+4*Vz','t',0,t) :
R1Cf=1/5;R2Cf=1/2;R3Cf=1/4;
disp("Various design parameters are : ");
Cf=10;//micro F////Chosen for the design
disp(Cf,"Capacitance(micro F)");
R1=R1Cf/(Cf*10^-6)/1000;//kohm
R2=R2Cf/(Cf*10^-6)/1000;//kohm
R3=R3Cf/(Cf*10^-6)/1000;//kohm
disp(R1,"Resistance R1(kohm)");
disp(R2,"Resistance R1(kohm)");
disp(R3,"Resistance R1(kohm)");
