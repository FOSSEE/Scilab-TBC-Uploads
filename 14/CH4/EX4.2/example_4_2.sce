//Chapter 4
//Example 4.2
//ChargingMVA
//Page 80
clear;clc;

//Given values
D_12 = 20;//in ft
D_23 = D_12;
D_31 = 38;//in ft
f = 60;//in Hz
V = 220e3;//in volts
l = 175;//in mi
k = 8.85e-12;//permittivity in F/m
//From tables A.1 and A.3
d = 1.108;//in inches
X_a1 = 0.0912e6;//in ohm mi
X_d1 = 0.0952e6;//in ohm mi

//Calculations
r = d / ( 2 * 12);//division by 12 to convert in to ft
D_eq = (D_12 * D_23 * D_31)^(1/3);
C_n = (2 * %pi * k)/log(D_eq/r);
X_c = 1 / (2 * %pi * f * C_n * 1609);//division by 1609 to convert to ohm mi

printf("\n\n Capacitance = %.4fe-12 F/m \n\n",C_n * 1e12)
printf("\n\n Capacitive reactance = %.4fe6 ohm mi \n\n",X_c / 1e6)

//Calculations From tables
X_c1 = X_a1 + X_d1;

disp('Using capacitive reactance at 1-ft spacing and spacing factor')
printf("\n\n Capacitive reactance = %.4fe6 ohm mi \n\n",X_c1 / 1e6)

X_c_l = X_c1 / l;//Capacitive reactance for 175mi
I_chg = 2 * %pi * f * V * C_n * 1609 / sqrt(3);
I_chg_l = I_chg * l;
Q = sqrt(3) * V * I_chg_l;

disp('For a lenght of 175mi')
printf("\n\n Capacitive reactance = %.4f ohm to neutral \n\n",X_c_l)
printf("\n\n Charging current per mile = %.3f A/mi \n\n",I_chg)
disp('For a lenght of 175mi')
printf("\n\n Charging current = %.0f A \n\n",I_chg_l)
printf("\n\n Total charging megavolt-amperes = %.1f Mvar \n\n",Q / 1e6)
