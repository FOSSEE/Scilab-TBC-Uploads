clc;clear;
//Example 5.10

//given data
Wo=2300*10;//threshold wavelength in Angstrom
W=1800*10;//incident light wavelength in Angstrom

//calculations
w=124000/Wo;
disp(w,'The work function in eV is');
E=124000*((1/W)-(1/Wo));
disp(E,'The maximum energy in eV')