clc;
c1=60;//m/s
W=-14000;//kW
m=17;//kg/s
h1=1200;//kJ/kg
h2=360;//kJ/kg

KE_I=c1^2/2000;//kJ/kg
KE_O=(2.5^2)*KE_I;
//c2=2.5*c1;

Q=m*{[h2+(KE_I/1000)]-[h1+(KE_O/1000)]}-W;
disp("Heat rejected:");
disp("kW",-Q);

v=0.5;//m^2
A=m*v/c1;
disp("inlet area is");
disp("m^2",A)
