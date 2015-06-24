//Chapter 3
//Example 3.4
//Inductanceof3phaseline
//Page 60
clear;clc;

//Given Values
D_12 = 20;D_23 = D_12;D_31 = 38;//in ft
f=60;//frequency in Hz

//From Table A.1
D_s = 0.0373;//in ft
X_a = 0.399;//inductive reactance at 1 ft spacing in ohm/mi
X_d = 0.389;//inductive reactance spacing factor in ohm/mi for 24.8ft

//Calculations
D_eq = (D_12 * D_23 * D_31)^(1/3);
L = 2e-7 * log(D_eq/D_s)*10^7;
X_L = 2*%pi*f*L*10^-7*1609;//multiplication by 1609 to convert to ohm/mi

//Displaying
printf("\n\n Inductance = %.4fe-7 H/m \n\n",L)
printf("\n\n Inductive reactance = %.4f ohm/mi/phase \n\n",X_L)

//inductance from X_a and X_d
X_L1 = X_a + X_d;
printf("\n\n Inductive reactance from Xa and Xd = %.4f ohm/mi/phase \n\n",X_L1)
