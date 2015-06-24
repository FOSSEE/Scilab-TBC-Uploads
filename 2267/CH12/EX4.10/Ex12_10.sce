//Part B Chapter 4 Example 10
clc;
clear;
close;
d=50;//mm
D1=110;//mm
D2=70;//mm
L=1*1000;//mm
T=1.5*10^6;//kNmm
G=10^5;//MPa
tauH_BY_tauS=D1/2/(d/2);
//tauS=T/(tauH_BY_tauS*%pi*(D1^4-D2^4)/32/D1+%pi*d^4/d/32);//N/mm^2
tauS=T/(tauH_BY_tauS*%pi*(D1^4-D2^4)/(D1*32)+%pi*d^4/(32*d))
tauH=tauH_BY_tauS*tauS;//N/mm^2
disp("Shear Stress in Solid shaft is "+string(tauS)+" N/mm^2");
disp("Shear Stress in hollow shaft is "+string(tauH)+" N/mm^2");
thetaH=tauS/G/(d/2);//radian
thetaS=thetaH;//radian
disp("Angle of twist oh both shaft is equal and it is "+string(thetaS)+" radian.");
//ANSWER IN THE BOOK IS WRONG.
