clear;
clc;
printf("\t\t\tchapter1_example3\n\n\n");
// determination of heat transferred by convection
h_c=3; // convective coefficient in [BTU/hr.ft^2
A=30*18; // Cross sectional area in ft^2
T_w=140; // Roof surface temperature in degree Fahrenheit
T_inf=85; // Ambient temperature in degree Fahrenheit
dT= (T_w-T_inf);
Q_c=h_c*A*dT; // Convective heat transfer in BTU/hr
printf("\nThe heat transferred by convection is %d BTU/hr",Q_c);
