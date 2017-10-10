clc;
clear all;
disp("heat transfer coefficient")
L=0.04;//m length of plate
Lc=L/2;// m characteristic length of plate
k=386;//W/m.C
rho=9000;// kg/m^3
C=380;//J/kg.C
t=165;//degree C
ta=90;// degree C
ti=200;// degree C
tau = 4.5*60;//sec
disp("Temperature distribution is given by : (t-ta)/(ti-ta) = exp((-h*As*tau)/(rho*V*C))")
m = (t-ta)/(ti-ta);
x=(-tau)/(rho*Lc*C);
h=(log(m))/x;
disp("W/m^2.C",h,"the heat transfer coefficient is ")
