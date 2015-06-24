//Exa 3.3
clc;
clear;
close;
// given :
Pr=1 //power in watt
I=sqrt(Pr/73) // current in A
Eta0=120*(%pi) // constant
r=poly(0,'r')
E_max=60*I/r
RI=r^2*E_max^2/Eta0 // radiation intensity
Gd_max=4*(%pi)*(RI)/Pr
Gd_max=horner(Gd_max,1)
disp(Gd_max,"Directivity of a half wave dipole:" )
