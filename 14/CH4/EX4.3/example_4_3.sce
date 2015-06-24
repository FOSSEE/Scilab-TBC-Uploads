//Chapter 4
//Example 4.3
//chap3ex5
//Page 85
clear;clc;

//Given Values
d = 0.45;//in m
k = 8.85e-12;//in F/m
D_ab = 8;//in m
D_bc = D_ab;
D_ca = 16;//in m
f = 60;//in Hz

//From tables
D = 1.382;//in inches

//Calculations
r = D * 0.3048 / (2 * 12)//divison by 12 to convert in to ft
                         //multiplication by 0.3048 to convert ft to m
D_b_sC = sqrt( r * d);
D_eq = (D_ab * D_bc * D_ca)^(1/3);
C_m = 2 * %pi * k / log(D_eq / D_b_sC);
X_c = 1e-3 / (2 * %pi * f *C_m);//1e-3 to convert m to km
printf("\n\n Capacitance = %.3fe-12 F/m \n\n",C_m * 1e12)
printf("\n\n Capacitive reactance = %.4fe6 ohm km per phase to neutral",X_c/1e6)