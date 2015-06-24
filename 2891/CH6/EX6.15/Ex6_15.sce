//Exa 6.15
clc;
clear;
close;
// given :
S=0.05 // spacing in m
Dh=0.1 // diameter of helical antenna in m
N=20 // number of turns
f=1000 // frequency in MHz
f=1000*10^6 // frequency in MHz
c=3*10^8 // speed of light in m/s
lambda=c/f // wavelength in m
C=%pi*Dh // circumfrence of helix in m
La=N*S // axial legth in m
phi_not=(115*(lambda^(3/2))/(C*sqrt(La))) // B.W.F.N., null-to-null beamwidth of main beam in Degreess
phi=(52*lambda^(3/2)/(C*sqrt(La))) // H.P.B.W, half power beamwidth in Degreess
D=(15*N*C^2*S/(lambda)^3) // Directivity
disp(phi_not,"B.W.F.N., null-to-null beamwidth of main beam in Degrees:")
disp(phi,"H.P.B.W, half power beamwidth in Degrees:")
disp(D,"Directivity:")
