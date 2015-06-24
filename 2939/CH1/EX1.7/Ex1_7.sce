//Ex1_7

clc;

//Given:

E=5.12*1.6*10^-19// energy in J
h=6.626*10^-34;
c=3*10^8;
wavelength=200*10^-9;
w=2.3;// in eV

//solution:

tf=E/h;// (part a)
printf("\n The threshold frequency in s^-1 is = %f ",tf)

tl=c/tf*10^10;// (part b)
printf("\n The threshold wavelength in Angstroms is = %f ",tl)

e=(h*c)/(wavelength*1.6*10^-19)// photon energy in eV (part c)

pe=e-w;

printf("\n The energy of photoelectrone in eV is = %f ",pe)
