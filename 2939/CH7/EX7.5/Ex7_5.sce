
// Ex7_5

clc;

// Given:
density=19;// in g/cc
E1=200*10^6*(1.6*10^-19); // energy released per fission in J
flux1=10^12;// in cm^2/s
a1=590*10^-24;//fission cross-section in cm^2
Na1=6.02*10^23;

// Solution:

//Ntgt=volume of target*No.of atoms per cm^3

Ni=(30*((0.5)^2)*3.14*density*Na1*(0.72*10^-2))/238;

Np=Ni*a1*flux1;

E2=E1*Np;// Thermal energy generated in J

printf("\n The thermal energy generated is = %f J",E2)
// Note: There is discrepancy in answer given in the textbook. After calculations the answer comes out to be 153.850366 J
