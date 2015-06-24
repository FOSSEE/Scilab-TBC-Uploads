// to calculate resultant air gap flux/pole

clc;
F1=400;
F2=850;
a=123.6;
Fr=sqrt(F1^2+F2^2+2*F1*F2*cosd(a));
P=1.408*10^-4;        //permeance/pole
phi_r=P*Fr;
disp(phi_r,'air gap flux/pole(Wb)');