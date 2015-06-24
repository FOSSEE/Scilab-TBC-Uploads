clear;
clc;

//Example - 7.24
//Page number - 257
printf("Example - 7.24 and Page number - 257\n\n");

// Given
T = 300 + 273.15;//[K]
P = 2.0;//[MPa]

// At 2 MPa and 250 C 
H_1 = 2902.5;//[kJ/kg]
// At 2 MPa and 350 C 
H_2 = 3137.0;//[kJ/kg]

Cp = (H_2 - H_1)/(350 - 250);//[kJ/kg-K]

printf(" The value of constant pressure specific heat capacity is, Cp = %f kJ/kg-K",Cp);

