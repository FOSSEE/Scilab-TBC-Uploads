//Exa 3.2
clc;
clear;
close;
//Given Data :
format('v',6);
W=0.85;//in Kg/meter
L=250;//in meter
Ww=1.4;//in Kg
SafetyFactor=5;//unitless
UTS=10128;//Ultimate tensile strength in Kg
T=UTS/SafetyFactor;//in Kg
Wi=0;//there is no ice
Wr=sqrt((W+Wi)^2+Ww^2);//in Kg
S=Wr*L^2/(8*T);//in meter
Sv=(W/Wr)*S;//in meter
disp(S,"Horizontal sag(in m) :");
disp(Sv,"Vertical sag(in m) :");