//Ex 9.20
clc;
clear;
close;
format('v',5);
fNO=50;//Hz
Q=20;//Quality Factor
disp("Various design parameters are :-");
C=1;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
R=1/(2*%pi*fNO)/(C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
disp("Use R=3.2 kohm");
//Q=(RA+RB)/4/RA
RA=1;//kohm(chosen for the design)
RB=Q*4*RA-RA;//kohm
disp(RA,"Resistance RA(kohm)");
disp(RB,"Resistance RB(kohm)");
