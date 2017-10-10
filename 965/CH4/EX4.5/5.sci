clc;
clear all;
disp("heat transfer coefficient")
R=12.5/2000;//m  radius of sphere
Lc=R/3;// m characteristic length of sphere
k=386;//W/m.C
rho=8850;// kg/m^3
C=400;//J/kg.C
t=54;//degree C
ta=28;// degree C
ti=65;// degree C
tau = 1.15*60;//sec
disp("Temperature distribution is given by : (t-ta)/(ti-ta) = exp((-h*As*tau)/(rho*V*C))")
m = (t-ta)/(ti-ta);
x=(-tau)/(rho*Lc*C);
h=(log(m))/x;
disp("W/m^2.C",h,"the heat transfer coefficient is ")
