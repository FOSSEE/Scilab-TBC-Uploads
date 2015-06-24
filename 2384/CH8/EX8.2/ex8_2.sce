// Exa 8.2
clc;
clear;
close;
format('v',8)
// Given data
N = 300;
miu_r = 900;
l = 40;// in cm
a = 5;// in cm^2
R = 100;// in ohm
V = 250;// in V
miu_o = 4*%pi*10^-7;
I = V/R;// in A
mmf = N*I;// in AT
disp(mmf,"The coil mmf in AT is");
H = (N*I)/(l*10^-2);// in AT/m
disp(H,"The field strength in AT/m is");
B = miu_o*miu_r*H;// in Wb/m^2
phi = B*a*10^-4;// in Wb
disp(phi,"Total flux in Wb is");
S = mmf/phi;// in AT/Wb
disp(S,"The reluctance of the ring in AT/Wb is");
// Permeance is recipocal of reluctance
Permeance = 1/S;// in Wb/AT
disp(Permeance,"Permeance of the ring in Wb/AT is");
