clc;
clear;
Ap=500;//mm^2
Q2=300;//cm^3/min
Qleak=0.1*Q2;//cm^3/min
//A1=Ap
//mass conservation in control volume
//-d*A1*V + m2 + d*Qleak =0; m2=d*Q2
//V=(Q2+Qleak)/Ap
V=(Q2+Qleak)*1000/Ap;
disp("mm/min",V,"The speed at which the plunger should be advanced=")