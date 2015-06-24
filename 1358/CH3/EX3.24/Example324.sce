// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 24")
Q = 0.545//m3/s
D1 = 0.8//m
D2 = 0.4//m
H =14//m
alpha2 = 90//degrees
N = 370
//beta1 = beta2
disp("Peripheral velocity of the wheel at inlet")
U1 = %pi*D1*N/60
disp("Velocity of flow at the exit,")
Cr2 = 2.8//m/s
alpha2 = 90
C2 = Cr2
g = 9.81;
disp("Work done/s by the turbine per kg of water = Cw*U1/g")
disp("But this is equal to the head utilized by the turbine, i.e.")
disp("Cw1U1/g = H - C2/2g")
disp("(Assuming there is no loss of pressure at outlet)")
Cw1 = (H - C2/(2*g) )*g/U1
disp("Work done per second by turbine")
rho = 1000;
W = rho*Q*Cw1*U1/(1000)//kW
disp("Available power or water power")
Pav = rho*g*Q*H /1000//kW
disp("Actual available power")
Pac = 70//kW
disp("Overall turbine efficiency is")
etat = Pac/Pav  * 100
disp("This is the actual hydraulic efficiency as required in the problem. Hydraulic Efficiency is")
etah = W/Pav  * 100
disp("This is the theoretical efficiency")
disp("Q = pi*D1b1Cr1 = pi*D2b2Cr2")
disp("(Neglecting blade thickness)")
Cr1 = Cr2 * D2/D1
disp("Drawing inlet velocity triangle")
//Cr1/(U1-Cw1) = 0.203
beta1 = atan(0.203)* 180/%pi
C1 = (Cw1^2+Cr1^2)^0.5
//Cw1/C1 = 0.995
aplha1 = acos(0.995)*180 /%pi
