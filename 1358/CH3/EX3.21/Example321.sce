// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 21")
disp("Hydraulic efficiency, etah, is given by")
disp("etah = Power given to runner/Water Power available")
disp(" = m (U1Cw1 - U2Cw2)/rho*gQH")
disp("Since flow is radial at exit, Cw2 = 0 and m = rho*Q. Therefore")
Cw2 = 0;
etah = 0.82;
U1 = 10.6;
g = 9.81;
H = 6;
Cw1 = etah*g*H/U1
Cr1 = 4;
alpha1 = atan(Cr1/Cw1)*180/%pi
disp("From Figures")
disp("Blade angle, beta1, is given by")
beta1 = 180 - atan(Cr1/(U1-Cw1)) * 180/%pi
disp("Runner speed at inlet")
N = 235;
D1 = U1*60/(%pi*N)
disp("Overall efficiency")
disp("etao = Power output/Power available")
etao = 0.75
rho = 1000;
P = 128000
disp("From which flow rate")
Q = P/(0.75*rho*g*H)
disp("Also, Q = rho*D1hCr1")
disp("where h1 is the height of runner. Therefore,")
h1 = Q/(%pi*D1*Cr1)
