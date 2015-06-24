//Ex 9.16
clc;
clear;
close;
format('v',5);
disp("Part(a)");
fc=1.2;//kHz
Q=4;//Quality Factor
Ap=10;//Pass band gain
disp("Here 2*Q^2=32>AP=10, hence it can be designed using single op-amp.");
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
//fc/Q=1/(%pi*R2*C)
R2=Q/(fc*1000)/%pi/(C*10^-6)/1000;//kohm
disp(R2,"Resistance R2(kohm)");
disp("Use R2=22 kohm");
format('v',5);
R1=R2/(2*Ap);//kohm
disp(R1,"Resistance R1(kohm)");
R3=R1*1000/(4*%pi^2*R1*1000*R2*1000*(C*10^-6)^2*(fc*1000)^2-1);//ohm
disp(R3,"Resistance R3(ohm)");
disp("Use R3=460 ohm");
disp("Part(b)");
R3=460;//ohm
fc_new=1.5;//kHz
fc_old=1.2;//kHz
R3new=R3*(fc_old/fc_new)^2;//ohm
disp("Resistance R3 should be changed from "+string(R3)+" ohm to "+string(R3new)+" ohm");
///Answer for R3 is wrong in the book
