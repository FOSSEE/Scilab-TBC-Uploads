//Ex 9.10
clc;
clear;
close;
format('v',5);
f0=2;//kHz(Critical frequency)
fH=f0;//kHz
f_3dB=f0;//kHz
//For Butterworth filter using sallen key
alfa=1.414;klp=1;//constant
Ap=3-alfa;// band pass gain
RfBYRi=Ap-1;//ratio
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
format('v',4);
R=1/(2*%pi*fH*10^3*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
//For offset minimization
//2*R=Rf||Ri=Rf/(RfBYRi+1)
Rf=2*R*(RfBYRi+1);//kohm
disp(Rf,"Resistance Rf(kohm)");
Ri=Rf/RfBYRi;//kohm
disp(Ri,"Resistance Ri(kohm)");
//Answer in the book is not accurate. Some calculation mistake is there while working for offset minimization.
