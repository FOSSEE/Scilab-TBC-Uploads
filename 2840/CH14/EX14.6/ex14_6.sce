clc;
clear all;
er=8;//relative permittivity
a=0.036;//area in m^2
e0=8.854*1e-12;//permittivity of vacume
C=6*1e-6;//capacitance in F
V=15;//potential difference
d=e0*er*a/C;
E=V/d;//field strength
disp('V/m',E,'field strength is=');
dpm=e0*(er-1)*E;//dipole moment/unit volume
disp('C/m^2',dpm,'dipole moment/unit volume=');
//slight variation in ans than book.. checked in calculator also(Mistake in textbook)
