clc;
clear all;
disp("required time calculation")
As=2*0.4*0.4;// m^2 surface area of plate
V=0.4*0.4*4/1000;// m^3 volume of plate
Lc=V/As;// m characteristic length of plate
h=20000;//kJ/m^2.h.C
k=370;//W/m.C
rho=3000;// kg/m^3
C=0.8;//kJ/kg.C
t=-70;// degree C
ta=-183;// degree C
ti=200;// degree C
Bi=h*Lc/k;// biot number
if (Bi< 0.1)
disp("Bi is less than 0.1 hence lumped heat capacity method can be applied")
end
disp("Temperature distribution is given by : (t-ta)/(ti-ta) = exp((-h*As*tau)/rho*V*C)")
m= (t-ta)/(ti-ta);
x=-h/(Lc*rho*C);
tau=3600*(log(m))/x;
disp("sec",tau,"time required to attend the temperature is ")
