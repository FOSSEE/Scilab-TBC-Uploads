//Exa 3.6
clc;
clear;
close;
//given data :
//l=lambda/15 meter
//Assume %pi^2 = 10
Rl=2;//in Ohm
//Gain : 
Gain=5.33/4;//Unitless
//Directivity
Rr=80*10*(1/15)^2;//in Ohm
ETA=Rr/(Rr+Rl);//Unitless
Directivity=Gain/ETA;//unitless
//Beam solid angle 
BSA=4*%pi/Directivity;//in steradian
disp(Directivity,"Directivity : ");
disp(Gain,"Gain = Pt/Pr = ");
//Effective aperture
disp("Effective aperture = G*lambda^2/(4*%pi) ");
disp(string(Gain/(4*%pi))+"lambda^2");
disp(BSA,"Beam Solid Angle in steradian : ");
disp("Radiation Resistance :")
disp("Rr=80*%pi^2*(dl/lambda)^2 in Ohm");
disp("dl/lambda = 1/15 : as l=lambda/10 ");
Rr=80*10*(1/15)^2;//in Ohm
disp(Rr,"Radiation Resistance in Ohm :  ");
disp("Pt = Area of sphere * (E^2/(120*%pi))");
disp("Pt = ((4*%pi^2)/(120*%pi))*((60*%pi*I/r)*(dl/lambda)^2)");
disp("Pt=120*%pi^2*(lambda*15/lambda)*I^2");
disp("Pt = "+string(120*10/225)+"I^2");
disp("Pr = I^2*Rr = 4*I^2");