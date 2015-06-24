clc;clear;
//Example 5.17

//given values
W=2000;//wavelength in Angstrom
Vs=4.2;//Work Function in eV
e=1.6*10^-19;//the charge on electron in C

//calculations
E=12400/W;
Emax=(E-Vs)*e;
disp(Emax,'KE of fastest photoelectron in J');
Emin=0;
disp(Emin,'KE of slowest moving electron in J');
Vo=Emax/e;
disp(Vo,'Stopping potential in V');
Wo=12400/Vs;
disp(Wo,'The cutoff wavelength in Angstrom')