clear;
clc;

//Example12.1[Radiation Emission from a Black Ball]
//Given:-
T=800;//Temperature of suspended ball[K]
D=0.2;//Diameter[m]
C1=3.74177*10^8;//[(micrometer^4)/m^2]
C2=1.43878*10^4;//[micrometer.K]
lambda=3;//[micrometer]
//Solution (a):-
Eb=(5.67*10^(-8))*(T^4);//[W/m^2]
disp("of energy in the form of energy in the form of electromagnetic radiation per second per m^2","kJ",Eb/1000,"The ball emits")
//Solution(b):-
As=%pi*(D^2);//[m^2]
disp("m^2",As,"The total Surface area of the ball is")
del_t=5*60;//[seconds]
Q_rad=Eb*As*del_t;//[J]
disp("kJ",Q_rad/1000,"The total amount of radiation energy emitted from the entire ball is")
//Solution (c)
Eb_lambda=C1/((lambda^5)*((exp(C2/(lambda*T)))-1));//[W/m^2.micrometer]
disp("W/m^2.micrometer",round(Eb_lambda),"The spectral blackbody emissive power")
