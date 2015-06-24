// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 3, Example 19")
disp("Hydraulic efficiency is")
disp("etah = Power deleloped/Power available")
disp(" =m(Cw1U1 - Cw2U)/rhogQH")
disp("Since flow is radial at outlet, then Cw2 = 0 and m = rhoQ, therefore")
disp("etah = Cw1U1/gH")
g = 9.81;
H= 5;
U1 = 9.6;
etah = 80;//%
Cw1 = etah *g*H/(9.6*100)
disp("Radial velocity Cr1 = 4m/s")
Cr1 = 4;
disp("tan(alpha1) = Cr1/Cw1 (from velocity triangle)")
alpha1 = atan(Cr1/Cw1)*180/%pi
disp("i.e., inlet guide vane angle alpha1 = 44.38")
disp("tan(beta1) = Cr1/(Cw1 - U1 )")
beta1 = 180+atan(Cr1/(Cw1-U1))*180/%pi
disp("Runner speed is")
N = 230;
D1 = 60*U1/(%pi*N)
disp("Overall efficiency")
disp("etao = Power output/Power available")
rho = 1000;
Q = 130*1000/(0.72*rho*g*H)
disp("But Q = pi*D1h1Cr1 (where h1 is the height of runner)")
h1 = Q/(%pi*D1*Cr1)
