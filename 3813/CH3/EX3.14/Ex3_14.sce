//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_14
clc;
clear;
t0=1.5;//Time in ms
t1=3;//Time in ms
Vs=200;//Supply voltage in V
gama=t0/t1;
Vl=gama*Vs;
Vrms=sqrt(gama)*Vs;
Rf=(sqrt(1-gama))/(sqrt(gama));
disp(Rf,"Ripple factor is:")
