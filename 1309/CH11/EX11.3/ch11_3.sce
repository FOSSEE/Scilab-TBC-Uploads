clc;
clear;
printf("\t\t\tChapter11_example3\n\n\n");
// (a) Calculation of the emissivity of the hole.(b) the rate of radiant emission from the hole
D=2.5/12; // diameter in ft
L=4.5/12; // length in ft
A=(2*%pi*D^2/4)+(%pi*D*L);
printf("\nThe inside surface area is %.3f sq.ft ",A);
A_hole=%pi*(1/(8*12))^2/4;
printf("\nThe area of a 1/8 inch hole is %.3e sq.ft",A_hole);
f=A_hole/A; // fraction of area removed
printf("\nThe fraction of area removed is %.3e ",f);
printf("\n\n\t\t\tSolution to Part (a)\n");
// for rolled and polished aluminum, that emissivity = 0.039 from appendix table E1
emissivity=0.039;
emissivity_hole=emissivity/(emissivity+(1-emissivity)*f);
printf("\nThe emissivity of the hole is %.4f",emissivity_hole);
printf("\n\n\t\t\tSolution to Part (b)\n");
sigma=0.1714e-8; // stefan Boltzmann constant in BTU/(hr~ft^2 degree R)
T=150+460; // temperature in degree R
qe=emissivity_hole*sigma*T^4;
printf("\nThe heat lost per unit area of the hole is %d BTU/hr",qe);
Qe=A_hole*qe;
printf("\nThe heat lost by the hole is %.2e BTU/hr",Qe);
