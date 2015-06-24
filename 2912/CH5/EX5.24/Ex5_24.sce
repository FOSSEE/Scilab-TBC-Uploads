//chapter 5
//example 5.24
//Calculate energy corresponding to the ground and first two excited states
//page 113
clear;
clc;
//given
a=1E-10; // in m (width of the well)
m=9.1E-31; // in Kg (mass of electron)
h=6.626E-34; // in J-s (Planck'c constant)
n1=1, n2=2, n3=3; //  ground and first two excited states
e=1.6*1E-19; // in C (charge of electron)
//calculate
// Since  E_n=n^2*h^2/(8*m*a^2)   (Energy corresponding to nth quantum state)
E1=n1^2*h^2/(8*m*a^2); // calculation of energy corresponding to the Ground state
printf('\nThe energy corresponding to the ground state is \tE1=%1.3E J',E1);
E1=E1/e; //changing unit from J to eV
printf('\n\t\t\t\t\t\t\t  =%.2f eV',E1);
E2=n2^2*h^2/(8*m*a^2); // calculation of energy corresponding to the 1st excited state
printf('\nThe energy corresponding to the 1st excited state is \tE2=%1.3E J',E2);
E2=E2/e; //changing unit from J to eV
printf('\n\t\t\t\t\t\t\t  =%.2f eV',E2);
E3=n3^2*h^2/(8*m*a^2); // calculation of energy corresponding to the 2nd excited state
printf('\nThe energy corresponding to the 2nd excited state is \tE3=%1.3E J',E3);
E3=E3/e; //changing unit from J to eV
printf('\n\t\t\t\t\t\t\t  =%.2f eV',E3);
// Note: There is slight variation in the answer due to round off
