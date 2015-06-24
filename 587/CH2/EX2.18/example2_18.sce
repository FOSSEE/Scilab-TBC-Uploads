clear;
clc;

//Example2.18[Variation of Temperature in a Resistance Heater]
//Given:-
k=13.55;//[W/m.degree Celcius]
ro=0.005;//[m]
e_gen=4.3*10^7;//rate of resistance heating[W/m^3]
Ts=108;//Surface temperature[degree Celcius]
//Solution:-
//Integrating we get
//T(r)=Ts+((e_gen*(ro^2-r^2)/4k))
T_0=Ts+((e_gen*ro^2)/(4*k));
disp("degree Celcius",round(T_0),"The temperature at the centreline,r=0 is")
