//Ex 6.15
clc;
clear;
close;
format('v',4);
//Data given
f0=1;//kHz
Vo_pp=7;//V
Vsat=14;//V
disp("Various design parameters are :-");
//Let R2=10;//kohm for the design
R2=10;//kohm
R1=2*R2*Vsat/Vo_pp;//kohm
disp(R1,"R1(kohm)");
disp(R2,"R2(kohm)");
//Choose Cf=0.1 micro F for the design
Cf=0.1;//micro F
disp(Cf,"Cf(micro F)");
Ri=R1*10^3/(4*f0*10^3*Cf*10^-6*R2*10^3)/1000;//kohm
disp(Ri,"Ri(kohm)");
