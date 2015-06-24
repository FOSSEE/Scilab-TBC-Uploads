clc;clear;
//Example 5.11

//given data
W=6000;//wavelegth in Angstrom
v=4*10^5;//velocity in m/sec
m=9.12*10^-31;//mass of electron in kg
e=1.6*10^-19;//the charge on electron in C

//calculations
KE=0.5*m*v^2/e;
disp(KE,'The Kinetic energy in eV is');
WF=12400/W;
Wo=12400/(WF-KE);
disp(Wo,'The threshold wavelength in Angstrom is')