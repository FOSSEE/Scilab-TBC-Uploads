// chapter 2
// example 2.6
// Determine the diameter of the steel wire
// page-17-18
clear;
clc;
// given
d_C=2; // in mm (diameter of the copper wire)
E_C=100; // in GPa (Modulus of elascticity for copper)
E_S=200; // in GPa (Modulus of elascticity for steel)
// calculate
// Since dl_C=dl_S and P_S=P_C and l_S=l_C
// and dl=P*l/(A*E) we  get
// dl_C=P_C*l_C/(A_C*E_C)  and dl_S=P_S*l_S/(A_S*E_S), comparing both we get
// A_S=A_C*E_C/E_S;
A_C=(%pi/4)*d_C^2; // calculation of cross-sectional area of steel wire
A_S=A_C*E_C/E_S; // calculation of cross-sectional area of copper wire
d_S=sqrt((4/%pi)*A_S); // calculation of the diameter of the steel wire
printf("\nThe internal diameter of the tube is \t d_S=%.2f mm",d_S);
