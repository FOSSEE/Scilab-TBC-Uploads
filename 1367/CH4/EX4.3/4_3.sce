//Find Lattice constant and atomic packing fraction of NaCl having FCC structure
//Ex:4.3
clc;
clear;
close;
r_na=0.98;//ionic radius of sodium in angstorm
r_cl=1.81;//ionic radius of chlorine in angstorm
n=4;//in fcc there are 4 Na and 4 Cl ions
a=((2*r_na)+(2*r_cl));//latice constant
disp(a,"Lattice constant = ");
apf=((n*(4/3)*3.14*r_na^3)+(n*(4/3)*3.14*r_cl^3))/a^3;
disp(apf,"atomic packing fraction of NaCl having FCC structure = ");