//Chapter 3
//Example 3.5
//BundledConductors
//Page 62
clear;clc;

//Given Values
d = 0.45;//in m
l = 160 ;//in km
d_12 = 8;d_23 = 8;d_31 = 16;//in m
f = 60;//in Hz
P = 100;//in MVA
V = 345;//in kV

//From Table A1
D_s = 0.0466;//in ft

//Calculations
D_b_s = sqrt(D_s * 0.3048 * d);//multiplicqation by 0.3048 is to convert D_s
                               //from ft to m
D_eq = (d_12 * d_23 * d_31)^(1/3);
X_L = 2 * %pi * f * 2e-7 * 10^3 * log(D_eq / D_b_s);//10^3 to get ohm/km

//To find per unit series reactance
Z = V^2 / P;//Base Impedance
X = X_L * l / Z;//per unit series reactance

printf("\n\n Inductive reactance = %.3f ohm/km/phase \n\n",X_L)
printf("\n\n Base Impedance = %.0f ohm \n\n",Z)
printf("\n\n Per unit series resistance of the line = %.3f per unit \n\n",X)