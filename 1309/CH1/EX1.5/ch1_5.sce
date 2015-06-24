clear;
clc;
printf("\t\t\tchapter1_example5\n\n\n");
// determination of heat loss rate by radiation
W=14; // width in ft
L=30; // length in ft
A=W*L; // area in ft^2
F_12=1; // view factor assumed to be 1
T1=120+460; // driveway surface temperature  in degree Rankine
printf("\nThe driveway surface temperature is %d degree Rankine",T1);
T2=0; // space temperature assumed to be 0 degree Rankine
sigma=0.1714*10^(-8); // value of Stefan-Boltzmann's constant in BTU/(hr.ft^2.(degree Rankine)^4)
e=0.9; // surface emissivity
q=sigma*A*e*F_12*((T1)^4-(T2)^4);
printf("\nThe heat loss rate by radiation is %d BTU/hr",q);
