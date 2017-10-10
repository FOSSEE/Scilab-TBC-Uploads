//Electric Drives:concepts and applications by V.subrahmanyam
//Publisher:Tata McGraw-Hill 
//Edition:Second 
//Ex3_15
clc;
clear;
R=1.5;//Resistance in ohm
L=3;//Inductance in H
Ton=2;//Time in ms
T=6;//Time in ms
Vs=150;//Supply voltage in V
t=Ton/T;
tON=L/R;
Vavg=T*Vs;
Iavg=Vavg/R;
P=(Iavg)^2*R;
Io=23.032;
I=1-exp(-t);
I1=Io*exp(-t);
Imax=(Vs/R)*I+I1;
disp(Imax,"Maximum current in A is:")
Imin=Imax*exp(-2*t);
disp(Imin,"Minimum current in A is:")

