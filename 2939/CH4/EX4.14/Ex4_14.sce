
// Ex4_14
clc;

// Given:
E0=1.7;// in MeV
// Solution:
// For E0<2.5 MeV; using Katz and Penfold empirical equation we have
R1=412*((E0)^(1.265-0.0954*log(E0)));// mg/cm^2
// Using feather's relation we have
R2=530*E0-106;// mg/cm^2

printf("The range in Al for beta radiation is %f mg/cm^2 using Katz and Penfold empirical equation and %f mg/cm^2 using feathers relation.",R1,R2)

