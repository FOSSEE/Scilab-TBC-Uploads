//Ex 9.6
clc;
clear;
close;
format('v',5);
fL=400;//Hz
Ap=2;//Pass band gain
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design between 0.01 & 1 micro F
disp(C,"Capacitance(micro F)");
R=1/(2*%pi*fL*C*10^-6)/1000;//kohm
format('v',4);
disp(R,"Resistance R(kohm)");
disp("Use R=8.2 kohm");
//Ap=1+Rf/Ri
RfBYRi=Ap-1;//Rf=Ri here
//R=Rf||Ri
Ri=2*R;//kohm
Rf=Ri;//kohm
disp(Ri,"Resistance Ri(kohm)");
disp(Rf,"Resistance Rf(kohm)");
