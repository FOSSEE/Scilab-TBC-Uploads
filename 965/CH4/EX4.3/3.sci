clc;
clear all;
disp("required temperature calculation")
D=0.1;//m dimeter
R=D/2;//m radius
As=4*%pi*(R^2);// m^2 surface area of sphere
V=4*%pi*(R^3)/3;// m^3 volume of sphere
Lc=V/As;// m characteristic length of sphere
h=200; //W/m^2/C
k=386;//W/m.C
rho=8954;// kg/m^3
C=383;//J/kg.C
ta=50;// degree C
ti=250;// degree C
tau = 5*60;//sec
Bi=h*Lc/k;// biot number
if (Bi< 0.1)
disp("Bi is less than 0.1 hence lumped heat capacity method can be applied")
disp("Temperature distribution is given by : (t-ta)/(ti-ta) = exp((-h*As*tau)/(rho*V*C))")
t = ta+(ti-ta)*exp((-h*As*tau)/(rho*V*C));
disp("degree C",t,"the temperature attained is ")
