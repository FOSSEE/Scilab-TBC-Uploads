clear;
clc;

//Example13.13[Effective Emissivity of Combustion Gases]
d=5,H=5;//Diameter and height of cylindrical furnace[m]
T=1200;//Temp of gases[K]
P=2;//Pressure[atm]
yN2=0.8,yH2O=0.08,yO2=0.07,yCO2=0.05;//Volumetric Composition
//Solution:-
Pc=yCO2*P;//[atm]
Pw=yH2O*P;//[atm]
disp("atm",Pw,"and","atm",Pc,"The partial pressures of CO2 and H2O are")
L=0.6*d;//[m]
x=Pc*L,y=Pw*L;//[m.atm]
ec_1=0.16,ew_1=0.23;//Emissivity of CO2 and H2O at 1 atm pressure
Cc=1.1,Cw=1.4;//Pressure Correction Factors are
del_e=0.048;//Emissivity correction factor at T=1200K
e_g=Cc*ec_1+Cw*ew_1-del_e;
disp(e_g,"The effectivity of the combustion gases is")