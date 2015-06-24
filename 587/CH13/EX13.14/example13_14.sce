clear;
clc;

//Example13.14[Radiation Heat Transfer in a Cylindrical Furnace]
//Given:-
Ts=600;//Wall Temperature[K]
d=5,H=5;//Diameter and Height of cylindrical furnace
Tg=1200,eg=0.45;//Average gas temperature and average emissivity of the combustion gases
Pc=0.10,L=3,Pw=0.16;//From Previous examples
//Solution:-
x=Pc*L*Ts/Tg;//[m.atm]
y=Pw*L*Ts/Tg;//[m.atm]
ec_1=0.11,ew_1=0.25;//Emissivities of CO2 and H2O corresponding to 600K and 1atm 
Cc=1.1,Cw=1.4;//Correction Factors
a_c=Cc*((Tg/Ts)^(0.65))*(ec_1);
a_w=Cw*((Tg/Ts)^(0.45))*ew_1;
disp(a_w,"and",a_c,"The absorptivities of CO2 and H2O are")
del_a=0.027;
a_g=a_c+a_w-del_a;
disp(a_g,"The absorptivity of the combustion gases is")
As=(%pi*d*H)+(%pi*(d^2)/2);//[m^2]
disp("m^2",round(As),"the surface area of the cylindrical surface is")
Q_net=round(As)*(5.67*10^(-8))*((eg*(Tg^4))-(a_g*(Ts^4)));
disp("W",Q_net,"The net rate of radiation heat transfer from the combustion gases to walls of the furnace is")