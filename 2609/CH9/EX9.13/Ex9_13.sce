//Ex 9.13
clc;
clear;
close;
format('v',5);
fL=20;//Hz(Cutoff frequency)
//For Butterworth filter of 2nd order
alfa=1.414;klp=1;//constant
Ap=3-alfa;// band pass gain
RfBYRi=Ap-1;//ratio
disp("Various design parameters are :-");
C=0.22;//micro F//Chosen for the design choosing between 0.01 & 1 micro F
disp(C,"Capacitance C(micro F)");
format('v',4);
R=klp/(2*%pi*fL*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
//For offset minimization
//R=Rf||Ri=Rf/(RfBYRi+1)
Rf=R*(RfBYRi+1);//kohm
disp(Rf,"Resistance Rf(kohm)");
Ri=Rf/RfBYRi;//kohm
Ri=floor(Ri);//kohm
disp(Ri,"Resistance Ri(kohm)");
