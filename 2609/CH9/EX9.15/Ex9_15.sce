//Ex 9.15
clc;
clear;
close;
format('v',6);
fL=200;//Hz
fH=1; //kHz
Ap=4;//Pass band gain
fc=sqrt(fH*1000*fL);//Hz(Cutoff frequency)
BW=fH*1000-fL;//Hz
Q=fc/BW;//Quality Factor
disp(Q,"Quality factor is ");
disp("As Q<12, it is a wide band filter.");
Ap1=2;//Pass band gain for high pass section
disp("Various design parameters for high pass section are :-");
C=0.033;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
format('v',4);
R=1/(2*%pi*fL*C*10^-6)/1000;//kohm
disp(R,"Resistance R(kohm)");
//Ap1=Rf/Ri+1 ; with Ap1=2 we have Rf=Ri
Rf=2*R;//kohm
Ri=2*R;//kohm
disp(Ri,Rf,"Resistance Rf & Ri(kohm)");
Ap2=2;//Pass band gain for low pass section
disp("Various design parameters for low pass section are :-");
format('v',6);
C=0.033;//micro F//Chosen for the design
disp(C,"Capacitance C(micro F)");
format('v',4);
K=fL/(fH*1000);//unitless
Rdash=K*R;//kohm
disp(Rdash,"Resistance Rdash(kohm)");
//Ap1=Rf/Ri+1 ; with Ap1=2 we have Rf=Ri
Rf=2*Rdash;//kohm
Ri=2*Rdash;//kohm
disp(Ri,Rf,"Resistance Rf & Ri(kohm)");
disp("Use Rf=Ri=10 kohm");
