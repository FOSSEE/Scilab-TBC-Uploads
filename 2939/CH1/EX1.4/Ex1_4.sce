//Ex1_4

clc;

//Given:

wavelength=10^-10;
m=9.1*10^-31;
h=6.626*10^-34;

//solution:

p=h/wavelength;
e=p*p/(2*m); // energy in J
e1=e/(1.6*10^-19);// energy in eV

printf("The energy in eV is = %f ",e1)


