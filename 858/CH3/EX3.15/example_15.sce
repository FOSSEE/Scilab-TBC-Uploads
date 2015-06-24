clc
clear 
printf("example 3.15 page number 107\n\n")

//to find change in enthalpy
H0_CH4 = -74.9   //in kJ
H0_CO2 = -393.5   //in kJ
H0_H2O = -241.8   //in kJ

delta_H0 = H0_CO2+2*H0_H2O-H0_CH4;
printf("change in enthalpy = %f kJ",delta_H0)
