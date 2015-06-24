//Ex 9.8
clc;
clear;
close;
format('v',6);
f0=3;//kHz(Critical frequency)
Ap=4;//Pass band gain
//For Butterworth filter using sallen key
alfa=1.414;klp=1;//constant
fH=f0;//kHz
f_3dB=f0;//kHz
disp("Various design parameters are :-");
C1=0.01;//micro F//Chosen for the design
disp(C1,"Capacitance C1(micro F)");
C2=alfa^2*C1/4;//micro F
disp(C2,"Capacitance C2(micro F)");
disp("Use C2=0.004 micro F");
C2=0.004;// micro F
R=1/(2*%pi*fH*10^3*sqrt(C1*10^-6*C2*10^-6))/1000;//kohm
format('v',4);
disp(R,"Resistance R(kohm)");
disp("Use R=8.2 kohm");
R=8.2;//kohm
//For offset minimization
Rdash=2*R;//kohm
disp(Rdash,"Resistance R*(kohm)");
RfBYRi=Ap-1;//Rf=Ri here
//Ri=10 kohm chosen for design
Ri=10;//kohm
Rf=RfBYRi*Ri;//kohm
disp(Ri,"Resistance Ri(kohm)");
disp(Rf,"Resistance Rf(kohm)");
