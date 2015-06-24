// Exa 9.11
clc;
clear;
close;
format('v',6)
// Given data
Io = 10;// in A
phi_o= acosd(0.25);// in °
V1 = 400;// in V
f = 50;// in Hz
N1 =500;
Im = Io*sind(phi_o);// in A
disp(Im,"The magnetizing component of no load current in A is");
Pi = V1*Io*cosd(phi_o);// in W
disp(Pi,"The iron loss in W is");
E1 = V1;// in V
//E1 v= 4.44*f*phi_m*N1;
phi_m = E1/(4.44*f*N1);// in Wb
phi_m=phi_m*10^3;// in mWb
disp(phi_m,"The maximum value of flux in mWb is");
