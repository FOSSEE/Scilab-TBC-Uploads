clc();
clear;
//Given :
D = 5*10^28; // density of atoms in silicon per m^3
C = 2.0*10^8; //donor concentration
ND = D/C; // donor atoms density per m^3
// ND = 4.82*10^21*T^(3/2)
T = (ND/(4.82*10^21))^(2/3);
printf("Temperature = %.2f K",T);
