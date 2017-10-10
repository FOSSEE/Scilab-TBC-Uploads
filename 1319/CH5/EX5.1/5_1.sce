// To find flux density in the core and induced emf in the secondary winding

clc;
clear;

E1=500;
A=60*(10^-4);
f=50;
N1=400;
N2=1000;

// E=4.44*f*N*Bm*A Induced EMF equation

Bm=E1/(4.44*f*N1*A);

E2=4.44*f*N2*Bm*A;

printf('a) The peak value of the flux density in the core = %f tesla \n',Bm)
printf('b) The voltage induced in the secondary winding = %f V \n',E2)
