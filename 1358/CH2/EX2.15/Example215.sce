// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 2, Example 15")
rho = 1000;//density in kg/m3
g = 9.81;//force of gravity in m/s2
H = 10;//head in m
Q = 1.3;//Discharge in m3/s
eta = 0.83;//efficiency
U2 = 22;//blade velocity
Ca = 4.5;//Flow velocity
N = 550;//rpm
disp("Power delivered to the water P in kW :")
P = rho*g*H*Q/1000
disp("Power input to the pump Pin in kW :")
Pin = P/eta
disp("Rotor tip diameter is given by D2 in m")
D2 = 60*U2/(%pi*N)
disp("Rotor Hub dia D1 in m :")
D1 = (D2^2 -Q/(%pi*Ca/4))^(1/2)
disp("Rotor velocity at hub is given by U1 in m/s :")
U1 = D1*U2/D2
disp("Since, the axial velocity is constant, we have: rotor inlet angl at tip alpha1t in degrees")
alpha1t = atan(Ca/U1)*180/%pi
disp("Rotor outlet angle alpha2t in degrees :")
alpha2t = atan(Ca/U2)*180/%pi
