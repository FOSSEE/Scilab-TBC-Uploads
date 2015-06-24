// Exa 7.2
clc;
clear;
close;
// Given data
H1 = 3100;// in kJ/kg
H2 = 1950;// in kJ/kg
C1 = 20;// in meter/second
C2 = 30;// in meter/secon
Q = 0;// in kJ/kg
Q_desh= 20;// in kJ/kg
Vs= 1.1;// in m^3/kg
W = H1-H2+(C1^2-C2^2)/(2*1000)+Q-Q_desh;// in kJ/kg
m= 2;//mass flow rate in kg/sec
Power= m*W;// in kW
disp(Power,"Power output of the turbine in kW is : ")
Area= m*Vs/C2;// in m^2
disp(Area,"Area of exhaust pipe in m^2 is : ")
