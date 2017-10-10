clc;
clear all;
disp("required time calculation")
As=2*0.5*0.5;// m^2 surface area of plate
V=0.5*0.5*0.00625;// m^3 volume of plate
Lc=V/As;// m characteristic length of plate
h=90; //W/m^2/C
k=370;//W/m.C
rho=9000;// kg/m^3
C=380;//J/kg.C
t=108;// degree C
ta= 36;// degree C
ti=300;// degree C
Bi=h*Lc/k;// biot number
if (Bi< 0.1)
disp("Bi is less than 0.1 hence lumped heat capacity method can be applied")
disp("Temperature distribution is given by : (t-ta)/(ti-ta) = exp((-h*As*tau)/rho*V*C)")
m=(t-ta)/(ti-ta);
x=-h*As/(V*rho*C);
disp("sunstituting the values we get,")
tau = (log(m))/x;
disp("sec",tau,"time required to attend the temperature is ")
