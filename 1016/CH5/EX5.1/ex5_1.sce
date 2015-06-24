clc;clear;
//Example 5.1

//given values
W1=4;//wavelength in Angstrom
W2=1;//wavelength in Angstrom
e=1.6*10^-19;//the charge on electron in C
m=9.12*10^-31;//mass of electron in kg

//calculation
disp("Part (i)");
E=12400/W1;
disp(E,'The energy in eV is');
v=sqrt(E*e*2/m);
disp(v,'The velocity in m/s is');
disp("Part (ii)");
E=12400/W2;
disp(E,'The energy in eV is');
v=sqrt(E*e*2/m);
disp(v,'The velocity in m/s is')