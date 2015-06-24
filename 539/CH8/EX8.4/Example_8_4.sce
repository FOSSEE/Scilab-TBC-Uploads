//Computation of critical shear stress

clear;
clc;

printf("\tExample 8.4\n");

E=393D9;             //Young's modulus for Al
gam=0.9;             //surface energy in J/m^2
a=4D-4;              //Crack length in m

sigc=sqrt(2*E*gam/(%pi*a/2));

printf("\nCritical shear stress is %.2e N/m^2\n",sigc);

//End