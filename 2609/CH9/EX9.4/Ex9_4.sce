//Ex 9.4
clc;
clear;
close;
format('v',5);
fH=2;//kHz(Cutoff frequency)
Ap=1;//Pass band gain
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design between 0.01 & 1 micro F
disp(C,"Capacitance(micro F)");
format('v',4);
R=1/(2*%pi*fH*1000*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
Rdash=R;///kohm(To eliminate the effect of offset)
disp(Rdash,"Resistance R*(kohm)");
