clear;
clc;

//Example2.21[Heat Conduction through a Wall with k(T)]
//Given:-
//k varies with temperature as k=k0(1+bT)
k0=38;//[W/m]
b=9.21*(10^(-4));//[k^(-1)]
h=2,w=0.7,t=0.1;//Height,width and thickness of plates respectively[m]
T1=600,T2=400;//Temperature maintained on the two sides of the plate[K]
//Solution:-
A=h*w;//Surface area of plate[m^2]
Tavg=(T1+T2)/2;//Average temperature of plate[K]
kavg=k0*(1+(b*Tavg));//[W/m.K]
disp("W/m.K",kavg,"The average thermal conductivity of the medium is")
Q_=kavg*A*(T1-T2)/t;//[W]
disp("kW",round(Q_/1000),"The rate of heat conduction through the plate is")