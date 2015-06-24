clc;clear;
//Example 5.12

//given data
Wo=4.8;//work function in eV
W=2220;//wavelength in angstrom

//calculations
E=12400/W;
Emax=E-Wo;
disp(Emax,'The maximum Kinetic energy in eV is')