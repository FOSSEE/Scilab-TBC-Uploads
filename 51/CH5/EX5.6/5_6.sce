clc;
clear;
v=971;//km/hr
v2=1050;//km/hr
A1=0.80;//m^2
d1=0.736;//Kg/m^3
A2=0.558;//m^2
d2=0.515;//Kg/m^3

//w1=v=intake velocity
//mass flow rate of fuel intake = d2*A2*w2 - d1*A1*w1
w2=v2+v;
m=(d2*A2*w2 - d1*A1*v)*1000;
disp("kg/hr",m,"The mass flow rate of fuel intake = ")