//Ex 9.9
clc;
clear;
close;
format('v',5);
f0=2;//kHz(Critical frequency)
Ap=5;//dc gain
//For Butterworth filter using sallen key
alfa=1.414;klp=1;//constant
fH=f0;//kHz
f_3dB=f0;//kHz
Ap1=3-alfa;//gain
RfBYRi=Ap1-1;//ratio
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
R=klp/(2*%pi*fH*10^3*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
disp("Use R=1.6 kohm");
//For offset minimization
//2*R=Rf||Ri=Rf/(RfBYRi+1)
Rf=2*R*(RfBYRi+1);//kohm
disp(Rf,"Resistance Rf(kohm)");
Ri=Rf/RfBYRi;//kohm
format('v',4);
disp(Ri,"Resistance Ri(kohm)");
//Ap=4;//dc gain in this case
Ap=4;//dc gain
Ap2=Ap/Ap1;//remainimg gain after 2nd order butterworth filter
RfdashBYRidash=Ap2-1;//ratio
//Ridash=10;//kohm chosen for design
Ridash=10;//kohm
disp(Ridash,"Resistance Ridash(kohm)");
Rfdash=RfdashBYRidash*Ridash;//kohm
disp(Rfdash,"Resistance Rfdash(kohm)");
