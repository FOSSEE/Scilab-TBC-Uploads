//Ex 9.2
clc;
clear;
close;
format('v',5);
fH=1;//kHz
Ap=2;//Pass band gain
disp("Various design parameters are :-");
C=0.05;//micro F//Chosen for the design
disp(C,"Capacitance(micro F)");
format('v',4);
R=1/(2*%pi*fH*1000*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
//Ap=1+Rf/Ri
RfBYRi=Ap-1;//Rf=Ri here
//R=Rf||Ri
Ri=2*R;//kohm
Rf=Ri;//kohm
disp(Ri,"Resistance Ri(kohm)");
disp(Rf,"Resistance Rf(kohm)");
