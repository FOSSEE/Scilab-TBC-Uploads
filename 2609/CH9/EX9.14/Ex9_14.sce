//Ex 9.14
clc;
clear;
close;
format('v',5);
fH=2;//kHz(Cutoff frequency)
Ap=4;//Pass band gain
disp("Butterworth filter of 3rd order can be obtained by cascading of first and second order high pass filter.");
//Butterworth polynomial is (s+1)*(s^2+s+1)
alfa=1;//for sallen key
Ap2=3-alfa;//gain for 2nd order filter
Ap1=Ap/Ap2;//gain for 1st order filter
//Design parameters for 1st order filter : 
disp("Various design parameters for 1st order filter are :-");
C=0.01;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
R=1/(2*%pi*fH*10^3*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
disp("Use R=8.2 kohm");
R=8.2;//kohm
//Ap1=Rf/Ri+1 ; with Ap1=2 we have Rf=Ri
Rf=2*R;//kohm
Ri=2*R;//kohm
disp(Ri,Rf,"Resistance Rf & Ri(kohm)");
format('v',6);
//Design parameters for 2nd order filter : 
kLp=1/alfa;//unitless
//Ap2=Rfdash/Ridash+1 ; with Ap2=2 we have Rfdash=Ridash
disp("Various design parameters for 2nd order filter are :-");
C=0.033;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
format('v',4);
R=kLp/(2*%pi*fH*10^3*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
Rf=2*R;//kohm
Ri=2*R;//kohm
disp(Ri,Rf,"Resistance Rfdash & Ridash(kohm)");
